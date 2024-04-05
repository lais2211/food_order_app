import 'package:flutter/material.dart';

import '../../l10n/text_l10n_pt.dart';

class HomeDescriptionBox extends StatelessWidget {
  HomeDescriptionBox({super.key});
  final TextL10nPt text = TextL10nPt();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 25,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(text.deliveryPrice),
              Text(
                text.deliveryPriceText,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(width: 85,),
          Column(
            children: [
              Text(text.deliveryTimer),
              Text(
                text.deliveryTimerText,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
