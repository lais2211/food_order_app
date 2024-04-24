import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';

import '../../l10n/text_l10n_pt.dart';

class Receipt extends StatelessWidget {
  final TextL10nPt text = TextL10nPt();
  Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 25,
        top: 50,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text.thankYou),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<CartController>(
                builder: (context, controller, child) =>
                    Text(controller.displayCartReceipt()),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Consumer<CartController>(builder: (context, controller, child) => Text(controller.deliveyTime())
            ),
          ],
        ),
      ),
    );
  }
}
