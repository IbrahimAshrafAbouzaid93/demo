import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/view/application_helper/application_utils/color_utils/colors.dart';
import 'package:task1/view/widgets/application_logo.dart';
import 'package:task1/view_model/home_screen_view_model.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenViewModel>(
      init: Get.put(HomeScreenViewModel()),
      builder: (ref) =>
          Scaffold(
            resizeToAvoidBottomInset : false,
            appBar: AppBar(
              actions:const [

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.notifications,color: Colors.white,),
                ),
              ],

              centerTitle: true,
              backgroundColor: appBarColor,
              title: const ApplicationLogo(),
            ),
            body: ref.currentScreen,
            bottomNavigationBar: ref.mainApplicationTaps(),
          ),
    );
  }
}