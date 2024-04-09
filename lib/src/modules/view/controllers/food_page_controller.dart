import 'package:mobx/mobx.dart';
import 'package:restaurante_app/src/modules/data/models/addon_model.dart';

part 'food_page_controller.g.dart';

class FoodPageController = _FoodPageControllerBase with _$FoodPageController;

abstract class _FoodPageControllerBase with Store {
  @observable
  Map<Addon, bool> selectAddons = {};
}
