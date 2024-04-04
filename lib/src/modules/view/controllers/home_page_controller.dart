import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_page_controller.g.dart';

class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store {
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
}
