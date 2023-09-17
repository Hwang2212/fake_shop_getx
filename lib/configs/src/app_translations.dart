import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'login': 'Login',
          'sign_up': 'Sign Up',
          'settings': 'Settings',
          'welcome': 'Welcome',
          'home': 'Home',
          'logout': 'Logout',
          'cart': 'Cart',
        },
        'cn': {}
      };
}
