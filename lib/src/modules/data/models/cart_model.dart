import 'package:restaurante_app/src/modules/data/models/addon_model.dart';
import 'package:restaurante_app/src/modules/data/models/food_model.dart';

class CartModel {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartModel(
      {required this.food,
      this.quantity = 1,
      required this.selectedAddons});
}
