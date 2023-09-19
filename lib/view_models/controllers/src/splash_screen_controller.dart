import 'package:get/get.dart';
import 'package:hpos/views/screens/src/tabs_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 5), () async {
      Get.offAllNamed(TabsScreen.routeName);
    });
  }
}
