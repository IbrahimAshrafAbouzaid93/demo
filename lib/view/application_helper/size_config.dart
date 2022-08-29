import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/*
here handle all width and height according to MediaQuery api to make out app design response
*/
class SizeConfig {
  SizeConfig._internal();

  static final SizeConfig _instance = SizeConfig._internal();

  factory SizeConfig() => _instance;

  double screenWidth = Get.context!.orientation == Orientation.portrait
      ? Get.mediaQuery.size.width
      : Get.mediaQuery.size.height;

  double screenHeight = Get.context!.orientation == Orientation.portrait
      ? Get.mediaQuery.size.height
      : Get.mediaQuery.size.width;

  double blockSizeHorizontal() => screenWidth / 100;

  double blockSizeVertical() => screenHeight / 100;

  double _safeAreaHorizontal() =>
      Get.mediaQuery.padding.left + Get.mediaQuery.padding.right;

  double _safeAreaVertical() =>
      Get.mediaQuery.padding.top + Get.mediaQuery.padding.bottom;

  double safeBlockHorizontal() =>
      (screenWidth -
          (Get.context!.orientation == Orientation.portrait
              ? _safeAreaHorizontal()
              : _safeAreaVertical())) /
      100;

  double safeBlockVertical() =>
      (screenHeight -
          (Get.context!.orientation == Orientation.portrait
              ? _safeAreaVertical()
              : _safeAreaHorizontal())) /
      100;
}
