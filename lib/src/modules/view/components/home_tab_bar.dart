import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurante_app/src/modules/view/controllers/home_page_controller.dart';

class HomeTabBar extends StatefulWidget {
  final TabController tabController;

   const HomeTabBar({super.key, required this.tabController});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  HomePageController controller = GetIt.I();

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      tabs: controller.buildCategoryTabs(),
    );
  }
}
