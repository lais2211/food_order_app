import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/data/models/food_enum.dart';
import 'package:restaurante_app/src/modules/data/models/restaurant_model.dart';
import 'package:restaurante_app/src/modules/view/components/current_location.dart';
import 'package:restaurante_app/src/modules/view/components/home_description_box.dart';
import 'package:restaurante_app/src/modules/view/components/home_drawer.dart';
import 'package:restaurante_app/src/modules/view/components/home_sliver_app_bar.dart';
import 'package:restaurante_app/src/modules/view/components/home_tab_bar.dart';

import '../../l10n/text_l10n_pt.dart';
import '../controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextL10nPt text = TextL10nPt();
  HomePageController controller = GetIt.I();

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrrolled) => [
                HomeSliverAppBar(
                  title: HomeTabBar(tabController: _tabController),
                  child: Column(
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(height: 50,),
                      const CurrentLocation(),
                      HomeDescriptionBox(),
                    ],
                  ),
                ),
              ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
                controller: _tabController,
                children: controller.getFoodInThisCategory(
                  restaurant.menu,
                )),
          )),
    );
  }
}
