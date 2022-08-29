import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task1/view/application_helper/application_utils/color_utils/colors.dart';
import 'package:task1/view/application_helper/application_utils/image_path_utils/image_path_file.dart';
import 'package:task1/view/widgets/application_logo.dart';
import 'package:task1/view_model/splash_screen_view_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenViewModel>(
        init: Get.put(SplashScreenViewModel()),
        builder: (context) {
          return Scaffold(
            backgroundColor: mainApplicationColor,
            body: const Center(
              child: ApplicationLogo(),
            ),
          );
        });
  }
}
