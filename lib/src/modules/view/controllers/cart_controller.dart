import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:restaurante_app/src/modules/data/models/addon_model.dart';
import 'package:restaurante_app/src/modules/data/models/cart_model.dart';
import '../../data/models/food_model.dart';

part 'cart_controller.g.dart';

class CartController = _CartControllerBase with _$CartController;

abstract class _CartControllerBase extends ChangeNotifier with Store {
  @observable
  ObservableList<CartModel> cartList = ObservableList<CartModel>();

  @observable
  late CartModel cart;

  @computed
  double get totalPriceCart {
    double addonsPrice =
        cart.selectedAddons!.fold(0, (sum, addon) => sum + addon.price);
    return (cart.food.price + addonsPrice) * cart.quantity;
  }

  @action
  void addFoodToCartController(Food food, List<Addon>? selectedAddons) {
    runInAction(() {
      CartModel? cartItem;

      try {
        cartItem = cartList.firstWhere((item) {
          bool isSameFood = item.food == food;
          bool isSameAddon = listEquals(item.selectedAddons, selectedAddons);
          return isSameFood && isSameAddon;
        });
      } catch (e) {
        cartItem == null;
      }

      if (cartItem != null) {
        cartItem.quantity++;
      } else {
        cartList.add(
          CartModel(
            food: food,
            selectedAddons: selectedAddons,
          ),
        );
      }
    });
  }

  @action
  void removeFromCart(CartModel cartModel) {
    runInAction(() {
      int cartIndex = cartList.indexOf(cartModel);
      if (cartIndex != -1) {
        if (cartList[cartIndex].quantity > 1) {
          cartList[cartIndex].quantity--;
        } else {
          cartList.removeAt(cartIndex);
        }
      }
    });
  }

  @action
  void clearCart() {
    runInAction(() {
      cartList.clear();
    });
  }

  @action
  double getTotalPriceRestaurant() {
    double total = 0.0;

    for (CartModel cartModel in cartList) {
      double itemTotal = cartModel.food.price;

      if (cartModel.selectedAddons != null) {
        for (Addon addon in cartModel.selectedAddons!) {
          itemTotal += addon.price;
        }
      }

      total += itemTotal * cartModel.quantity;
    }

    return total;
  }

  @action
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartModel cartModel in cartList) {
      totalItemCount += cartModel.quantity;
    }
    return totalItemCount;
  }

  @action
  String displayCartReceipt() {
    final receipt = StringBuffer();

    receipt.writeln('Aqui está o seu recibo.');
    receipt.writeln();

    String formattedDate = DateFormat('yyyy-MM-dd                 HH:mm:ss')
        .format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('----------------');

    for (final cartItem in cartList) {
      receipt.writeln(
          "${cartItem.quantity} X ${cartItem.food.name} - ${formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons!.isNotEmpty) {
        receipt.writeln('Adicionais: ${formatAddons(cartItem.selectedAddons)}');
        receipt.writeln();
      }
      receipt.writeln('----------------');
      receipt.writeln();
      receipt.writeln('Total de items: ${getTotalItemCount()}');
      receipt.writeln('Preço total: ${formatPrice(getTotalPriceRestaurant())}');
    }
      receipt.writeln('----------------');
      receipt.writeln();
      receipt.writeln('Total de items: ${getTotalItemCount()}');
      receipt.writeln('Preço total: ${formatPrice(getTotalPriceRestaurant())}');
    
    return receipt.toString();
  }

  @action
  String formatPrice(double price) {
    return 'R\$${price.toStringAsFixed(2)}';
  }

  @action
  String formatAddons(List<Addon>? addons) {
    return addons!
        .map((addon) => '${addon.name} (${formatPrice(addon.price)})')
        .join(',');
  }

  @action
  String deliveyTime() {
    DateTime now = DateTime.now();
    DateTime dateTimePlus30Minutes = now.add(const Duration(minutes: 30));

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTimePlus30Minutes);

    return 'Entrega estimada para $formattedDate';
  }
}
