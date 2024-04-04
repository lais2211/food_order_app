import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../l10n/text_l10n_pt.dart';
import '../controllers/home_page_controller.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  HomePageController controller = GetIt.I();

  final TextL10nPt text = TextL10nPt();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text.delivery,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => controller.openLocationSearchBox(
              context,
              text.currentLocationTitle,
              text.searchLocation,
              text.cancelButton,
              text.saveButton,
            ),
            child: Row(
              children: [
                Text(
                  text.location,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
