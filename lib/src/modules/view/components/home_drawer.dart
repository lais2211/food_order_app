import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurante_app/src/modules/view/components/home_drawer_tile.dart';
import 'package:restaurante_app/src/modules/view/pages/home_page.dart';
import 'package:restaurante_app/src/modules/view/pages/login_page.dart';

import '../../l10n/text_l10n_pt.dart';
import '../controllers/home_page_controller.dart';
import '../pages/settings_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final TextL10nPt text = TextL10nPt();

    HomePageController controller = GetIt.I();
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 100.0,
            ),
            child: Icon(
              Icons.restaurant,
              size: 80.0,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              25.0,
            ),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          HomeDrawerTile(
            text: text.home,
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          HomeDrawerTile(
            text: text.settings,
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          const Spacer(),
          HomeDrawerTile(
            text: text.logout,
            icon: Icons.logout,
            onTap: () {
              controller.logout(context);
            },
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
