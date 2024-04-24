// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurante_app/src/modules/view/components/main_button.dart';
import 'package:restaurante_app/src/modules/view/controllers/payment_page_controller.dart';

import '../../l10n/text_l10n_pt.dart';

class PaymentPage extends StatefulWidget {
 final CreditCardModel creditCard;

 PaymentPageController controller = GetIt.I();

  PaymentPage({Key? key, required this.creditCard});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextL10nPt text = TextL10nPt();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(text.payment),
      ),
      body: Column(
        children: [
          CreditCardWidget(
            cardNumber: widget.creditCard.cardNumber,
            expiryDate: widget.creditCard.expiryDate,
            cardHolderName: widget.creditCard.cardHolderName,
            cvvCode: widget.creditCard.cvvCode,
            showBackView: widget.creditCard.isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
          ),
          CreditCardForm(
              cardNumber: widget.creditCard.cardNumber,
              expiryDate: widget.creditCard.expiryDate,
              cardHolderName: widget.creditCard.cardHolderName,
              cvvCode: widget.creditCard.cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  widget.creditCard.cardNumber = data.cardNumber;
                  widget.creditCard.expiryDate = data.expiryDate;
                  widget.creditCard.cardHolderName = data.cardHolderName;
                  widget.creditCard.cvvCode = data.cvvCode;
                });
              },
              formKey: widget.controller.formKey),
          const Spacer(),
          MainButton(
            text: text.paymentNow,
            onTap: () {
              widget.controller.credit = widget.creditCard;
              widget.controller.userTappedPay(context);
            } 
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
