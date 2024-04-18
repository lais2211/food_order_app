import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurante_app/src/modules/data/models/cart_model.dart';
import 'package:restaurante_app/src/modules/view/components/quantity_selector.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';

import 'addon_list_view.dart';

class CartTile extends StatelessWidget {
  final CartModel cart;
  const CartTile({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      CartController cartController = GetIt.I();
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 10,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cart.food.imagePath,
                      height: 80,
                      width: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cart.food.name),
                      Text(
                        'R\$${cart.food.price}',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  // QuantitySelector(
                  //   quantity: cart.quantity,
                  //   food: cart.food,
                  //   onIncrement: () {
                  //     cartController.addFoodToCartController(
                  //         cart.food, cart.selectedAddons);
                  //   },
                  //   onDecrement: () {
                  //     cartController.removeFromCart(cart);
                  //   },
                  // )
                ],
              ),
            ),
            if (cart.selectedAddons != null) ...[
              SizedBox(
                  height: cart.selectedAddons!.isEmpty ? 0 : 60,
                  child: AddonListView(cart: cart)),
            ],
            QuantitySelector(
              quantity: cart.quantity,
              food: cart.food,
              onIncrement: () {
                cartController.addFoodToCartController(
                    cart.food, cart.selectedAddons);
              },
              onDecrement: () {
                cartController.removeFromCart(cart);
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    });
  }
}
