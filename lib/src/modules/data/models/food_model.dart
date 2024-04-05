import 'package:restaurante_app/src/modules/data/models/addon_model.dart';
import 'package:restaurante_app/src/modules/data/models/food_enum.dart';

class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.description,
    required this.imagePath,
    required this.price,
    required this.name,
    required this.category,
    required this.availableAddons,
  });
}
