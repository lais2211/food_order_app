import 'package:flutter/material.dart';
import 'package:restaurante_app/src/modules/view/components/current_location.dart';
import 'package:restaurante_app/src/modules/view/components/home_description_box.dart';
import 'package:restaurante_app/src/modules/view/components/home_drawer.dart';
import 'package:restaurante_app/src/modules/view/components/home_sliver_app_bar.dart';

import '../../l10n/text_l10n_pt.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextL10nPt text = TextL10nPt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrrolled) => [
                HomeSliverAppBar(
                  title: Text(
                    text.homeTitle,
                  ),
                  child: Column(
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const CurrentLocation(),
                      HomeDescriptionBox(),
                    ],
                  ),
                ),
              ],
          body: Container()),
    );
  }
}
