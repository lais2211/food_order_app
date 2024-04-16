import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/data/models/cart_model.dart';
import 'package:restaurante_app/src/modules/view/components/quantity_selector.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';

class CartTile extends StatelessWidget {
  final CartModel cart;
  const CartTile({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartController>(
      builder: (context, controller, child) => Container(
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
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cart.food.imagePath,
                    height: 100,
                    width: 100,
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
                      'R\$' + cart.food.price.toString(),
                    ),
                  ],
                ),
                const Spacer(),
                QuantitySelector(
                  quantity: cart.quantity,
                  food: cart.food,
                  onIncrement: () {
                    controller.addFoodToCartController(cart.food, cart.selectedAddons);
                  },
                  onDecrement: () {
                    controller.removeRomCart(cart);
                  },
                ),
                SizedBox(
                  height: cart.selectedAddons.isEmpty ? 0 : 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(
                      left: 10,
                      bottom: 10,
                      right: 10,
                    ),
                    children: cart.selectedAddons
                        .map(
                          (addon) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: FilterChip(
                              label: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    addon.name,
                                  ),
                                  Text(
                                    'R\$' + addon.price.toString(),
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                              shape: StadiumBorder(
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              onSelected: (value) {},
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                              labelStyle: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
