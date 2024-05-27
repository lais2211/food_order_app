import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/data/services/database/firestore.dart';
import 'package:restaurante_app/src/modules/view/components/receipt.dart';

import '../../l10n/text_l10n_pt.dart';
import '../controllers/cart_controller.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  final TextL10nPt text = TextL10nPt();
  FirestoreService db = FirestoreService();
  @override
  void initState() {
    super.initState();
    String receipt = context.read<CartController>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text.deliveryInProgress),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Receipt(),
        ],
      ),
    );
  }
}
