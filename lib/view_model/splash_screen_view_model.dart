import 'package:get/get.dart';
import 'package:task1/view/screens/main_screen/main_screen.dart';

class SplashScreenViewModel extends GetxController {
  @override
  void onInit() {
    gotoNext();
    super.onInit();
  }



  gotoNext() => Future.delayed(const Duration(milliseconds: 500), () {
        Get.offAll(const MainScreen());
      });
}
