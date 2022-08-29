import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/view/application_helper/application_utils/color_utils/colors.dart';
import 'package:task1/view/screens/home_screen/home_screen.dart';
import 'package:task1/view/screens/last_orders/last_orders.dart';
import 'package:task1/view/screens/more_screen/more_screen.dart';
import 'package:task1/view/screens/sales_screens/sales_screen.dart';
import 'package:task1/view/screens/wallet_screen/wallet_screen.dart';

class HomeScreenViewModel extends GetxController {
  final ValueNotifier<int> _navigatorValue = ValueNotifier(0);

  get navigatorValue => _navigatorValue.value;
  Widget currentScreen = HomeScreen();

  Widget mainApplicationTaps() {
    return BottomNavigationBar(
      selectedItemColor: mainApplicationColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: navigatorValue == 0 ? mainApplicationColor : grayColor,
          ),
          label: ' الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet,
              color: navigatorValue == 1 ? mainApplicationColor : grayColor),
          label: 'المحفظه',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long_outlined,
              color: navigatorValue == 2 ? mainApplicationColor : grayColor),
          label: 'المبيعات',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_rounded,
              color: navigatorValue == 3 ? mainApplicationColor : grayColor),
          label: 'طلبات مسبقه',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz,
              color: navigatorValue == 4 ? mainApplicationColor : grayColor),
          label: 'المزيد',
        ),
      ],
      currentIndex: navigatorValue,
      onTap: (value) {
        changeNavigatorValue(value);
      },
    );
  }

  void changeNavigatorValue(int selectedValue) {
    _navigatorValue.value = selectedValue;

    switch (selectedValue) {
      case 0:
        currentScreen =  HomeScreen();
        break;

      case 1:
        currentScreen = const WalletScreen();
        break;
      case 2:
        currentScreen = const SalesScreen();
        break;
      case 3:
        currentScreen = const LastOrdersScreen();
        break;
      case 4:
        currentScreen = const MoreScreen();
        break;
    }
    update();
  }
}
