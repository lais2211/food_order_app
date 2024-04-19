import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/data/models/cart_model.dart';
import 'package:restaurante_app/src/modules/view/components/quantity_selector.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';

import 'addon_list_view.dart';

class CartTile extends StatefulWidget {
  final CartModel cart;
  const CartTile({super.key, required this.cart});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartController>(
        builder: (context, cartController, child) => Container(
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
                            widget.cart.food.imagePath,
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
                            Text(widget.cart.food.name),
                            Text(
                              'R\$${widget.cart.food.price}',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  if (widget.cart.selectedAddons != null) ...[
                    SizedBox(
                        height: widget.cart.selectedAddons!.isEmpty ? 0 : 60,
                        child: AddonListView(cart: widget.cart)),
                  ],
                  QuantitySelector(
                    quantity: widget.cart.quantity,
                    food: widget.cart.food,
                    onIncrement: () {
                      setState(() {
                        cartController.addFoodToCartController(
                            widget.cart.food, widget.cart.selectedAddons);
                      });
                    },
                    onDecrement: () {
                      (() {
                        cartController.removeFromCart(widget.cart);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ));
  }
}
