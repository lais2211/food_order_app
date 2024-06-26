import 'package:flutter/material.dart';
import 'package:restaurante_app/src/modules/view/pages/cart_page.dart';

import '../../l10n/text_l10n_pt.dart';

class HomeSliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  final TextL10nPt text = TextL10nPt();

  HomeSliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  CartPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
            ))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(text.restaurantName),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(
            bottom: 50,
          ),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(
          left: 0,
          right: 0,
          top: 0,
        ),
        expandedTitleScale: 1,
      ),
    );
  }
}
