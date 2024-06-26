import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:restaurante_app/src/modules/data/models/food_enum.dart';
import 'package:restaurante_app/src/modules/data/services/auth/auth_service.dart';
import 'package:restaurante_app/src/modules/view/components/food_tile.dart';
import 'package:restaurante_app/src/modules/view/pages/food_page.dart';

import '../../data/models/food_model.dart';

part 'home_page_controller.g.dart';

class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store {
  @action
  List<Food> filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  @action
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return FoodTile(
              food: food,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodPage(food: food))),
            );
          });
    }).toList();
  }

  @action
  List<Tab> buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @action
  void openLocationSearchBox(BuildContext context, String title,
      String hintText, String cancelButton, String saveButton) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: TextField(
          decoration: InputDecoration(hintText: hintText),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              cancelButton,
            ),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              saveButton,
            ),
          ),
        ],
      ),
    );
  }
  @action
  Future<void> logout (context) async {
    final _authService = AuthService();
    _authService.signOut();
  } 
}
