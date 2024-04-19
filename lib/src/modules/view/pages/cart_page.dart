import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/view/components/cart_tile.dart';
import 'package:restaurante_app/src/modules/view/components/main_button.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';
import 'package:restaurante_app/src/modules/view/pages/payment_page.dart';

import '../../l10n/text_l10n_pt.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final TextL10nPt text = TextL10nPt();

  @override
  Widget build(BuildContext context) {
    return Consumer<CartController>(
      builder: (context, controller, child) {
        final userCart = controller.cartList;

        return Scaffold(
          appBar: AppBar(
            title: Text(text.cart),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title:  Text(
                             text.clearCart,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child:  Text(text.cancelButton),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState() {
                                    controller.clearCart();
                                  }
                                },
                                child: Text(text.yesButton),
                              ),
                            ],
                          ));
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(
                              child: Text(
                                text.emptyCart,
                              ),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (
                                  context,
                                  index,
                                ) {
                                  final cartItem = userCart[index];
                                  return CartTile(cart: cartItem);
                                }))
                  ],
                ),
              ),
              MainButton(
                text: text.paymentPage,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(
                      creditCard: CreditCardModel(
                        '',
                        '',
                        '',
                        '',
                        false,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        );
      },
    );
  }
}
