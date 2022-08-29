import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:task1/model/data/main_category_model.dart';
import 'package:task1/model/data/sub_category_model.dart';
import 'package:task1/model/repository/home_repo.dart';
import 'package:task1/view/application_helper/application_utils/app_extension/size_extension.dart';

class MainCategoryViewModel extends GetxController{
 late List<SubCategoryModel> subCategoryList;
 late List<SubCategoryModel> payList;
 late List<MainCategoryModel>mainCategoryList;
 RxBool isDetails=RxBool(false);
 @override
  void onInit() {
   subCategoryList=HomeRepository().subCategoryList;
   mainCategoryList=HomeRepository().mainCategoryList;
   payList=HomeRepository().payList;

    super.onInit();
  }
   resetDetails(){
  isDetails.value=!isDetails.value;
  update();
   }
}