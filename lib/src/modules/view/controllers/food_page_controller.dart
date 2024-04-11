import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:restaurante_app/src/modules/data/models/addon_model.dart';
import 'package:restaurante_app/src/modules/data/models/restaurant_model.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';

import '../../data/models/food_model.dart';

part 'food_page_controller.g.dart';

class FoodPageController = _FoodPageControllerBase with _$FoodPageController;

abstract class _FoodPageControllerBase with Store {
  @observable
  Map<Addon, bool> selectAddons = {};

  @action
  void addToCart(Food food, Map<Addon, bool> selectedAddons, context) {
    
    Navigator.pop(context);
    
    List<Addon> currentlySelectedAddons = [];

    for (Addon addon in food.availableAddons) {
      if (selectAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<CartController>().addToCart(food, currentlySelectedAddons);
  }
}
