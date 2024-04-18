import 'package:flutter/material.dart';

import '../../data/models/cart_model.dart';

class AddonListView extends StatelessWidget {
  const AddonListView({
    super.key,
    required this.cart,
  });

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(
        left: 10,
        bottom: 10,
        right: 10,
      ),
      children: cart.selectedAddons
          !.map(
            (addon) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: FilterChip(
                label: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      addon.name,
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      'R\$${addon.price}',
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
    );
  }
}