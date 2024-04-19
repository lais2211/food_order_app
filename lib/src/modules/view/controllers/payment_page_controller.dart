import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:mobx/mobx.dart';
import 'package:restaurante_app/src/modules/view/pages/delivery_progress_page.dart';

part 'payment_page_controller.g.dart';

class PaymentPageController = _PaymentPageControllerBase
    with _$PaymentPageController;

abstract class _PaymentPageControllerBase extends ChangeNotifier with Store {
  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @observable
  late CreditCardModel credit;

  @action
  void userTappedPay(context) {
    if (formKey.currentState!.validate()) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Confirmar Pagamento'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text("Numero do cartao: ${credit.cardNumber}"),
                      Text("Data de vencimento: ${credit.expiryDate}"),
                      Text("Nome no cartao: ${credit.cardHolderName}"),
                      Text("CVV: ${credit.cvvCode}"),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeliveryProgressPage()));
                    },
                    child: const Text('Sim'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar'),
                  ),
                ],
              ));
    }
  }
}
