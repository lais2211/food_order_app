import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/view/components/cart_tile.dart';
import 'package:restaurante_app/src/modules/view/components/main_button.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';
import 'package:restaurante_app/src/modules/view/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartController>(
      builder: (context, controller, child) {
        final userCart = controller.userCart;

        return Scaffold(
          appBar: AppBar(
            title: Text('Carrinho'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text(
                              'Você quer limpar o carrinho?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Cancelar'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  controller.clearCart();
                                },
                                child: const Text('Sim'),
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
                        ? const Expanded(
                            child: Center(
                              child: Text(
                                'Carrinho vazio',
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
                text: 'Vá para o pagamento',
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
