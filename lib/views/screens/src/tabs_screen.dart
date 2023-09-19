import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hpos/view_models/controllers/src/tab_screen_controller.dart';
import 'package:hpos/views/screens/src/cart_screen.dart';
import 'package:hpos/views/screens/src/favourites_screen.dart';
import 'package:hpos/views/screens/src/settings_screen.dart';
import 'package:hpos/views/view.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tab-screen';
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final tabScreenController = Get.put(TabsScreenController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bottomNavigationBar: _bottomNavigationBar(tabScreenController),
      body: Obx(
        () => IndexedStack(
          index: tabScreenController.tabIndex.value,
          children: const [
            HomeScreen(),
            FavouritesScreen(),
            CartScreen(),
            SettingScreen(),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBar(TabsScreenController controller) {
    return Obx(() => Material(
          elevation: 8,
          child: ExpandedSection(
            expand: true,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.brown[100],
              showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedItemColor: Colors.white,
              currentIndex: tabScreenController.tabIndex.value,
              onTap: controller.changeTabIndex,
              items: [
                BottomNavigationBarItem(
                    icon: const Icon(Icons.home_outlined), label: 'home'.tr),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.favorite_border_outlined),
                    label: 'favourites'.tr),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.shopping_cart_outlined),
                    label: 'cart'.tr),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.settings), label: 'settings'.tr),
              ],
            ),
          ),
        ));
  }
}
