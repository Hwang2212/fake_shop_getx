import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hpos/configs/configs.dart';
import 'package:hpos/views/screens/src/cart_screen.dart';
import 'package:hpos/views/screens/src/favourites_screen.dart';
import 'package:hpos/views/screens/src/settings_screen.dart';
import 'package:hpos/views/screens/src/splash_screen.dart';
import 'package:hpos/views/screens/src/tabs_screen.dart';
import 'package:hpos/views/view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fake Shop',
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),
        GetPage(name: TabsScreen.routeName, page: () => const TabsScreen()),
        GetPage(name: HomeScreen.routeName, page: () => const HomeScreen()),
        GetPage(
            name: FavouritesScreen.routeName,
            page: () => const FavouritesScreen()),
        GetPage(name: CartScreen.routeName, page: () => const CartScreen()),
        GetPage(
            name: SettingScreen.routeName, page: () => const SettingScreen())
      ],
      home: SplashScreen(
        key: key,
      ),
    );
  }
}
