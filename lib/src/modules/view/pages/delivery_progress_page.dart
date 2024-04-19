import 'package:flutter/material.dart';
import 'package:restaurante_app/src/modules/view/components/receipt.dart';

import '../../l10n/text_l10n_pt.dart';

class DeliveryProgressPage extends StatelessWidget {
  final TextL10nPt text = TextL10nPt();
  DeliveryProgressPage({super.key});

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
