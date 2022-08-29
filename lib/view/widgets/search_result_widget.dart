import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:task1/view/application_helper/application_utils/app_constants/app_repo_constants.dart';
import 'package:task1/view/application_helper/application_utils/app_extension/size_extension.dart';
import 'package:task1/view/application_helper/application_utils/color_utils/colors.dart';
import 'package:task1/view/application_helper/application_utils/image_path_utils/image_path_file.dart';
import 'package:task1/view/application_helper/size_config.dart';
import 'package:task1/view_model/main_category_view_model.dart';

class SearchResultWidget extends StatelessWidget {
  final Widget? list;
  const SearchResultWidget({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<MainCategoryViewModel>(
      init: Get.find(),
      builder:(ref)=> Container(
        decoration: BoxDecoration(
          color: mainApplicationColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(2.safeBlockHorizontal()),
            topLeft: Radius.circular(2.safeBlockHorizontal()),
          ),

        ),
        width: SizeConfig().screenWidth,
        height: 30.safeBlockVertical(),
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                ref.resetDetails();
              },
              child: Align(

                alignment: Alignment.topLeft,

                child: Padding(
                  padding: const EdgeInsets.only(top: 3,left: 3),
                  child: Image.asset(closeImage),
                ),),
            ),

            Row(
              children: [
                Image.asset(kidImage,
                fit:BoxFit.cover,
                width:  20.safeBlockHorizontal(),
                height: 10.safeBlockVertical(),),
                Column(
                  children: [

                    Row(
                      children: [
                        Icon(Icons.home_work_outlined,color: Colors.white,),
                        Text('رقم',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: arabicRoman
                          ),),
                        Text('135',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: arabicRoman
                          ),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('محمد بن عبد الله الفلاج',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: arabicRoman
                          ),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.wallet,color: Colors.white,),
                        Text(' الرصيد :1000',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: arabicRoman
                          ),),
                        Text('ريال ',
                          style: TextStyle(
                              color: currencyColor,
                              fontFamily: arabicRoman
                          ),),
                      //  SizedBox(width: 5,),
                        Text('الحد اليومي',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: arabicRoman
                          ),),
                       // SizedBox(width: 5,),
                        Text('1500',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: arabicRoman
                          ),),
                        Text('ريال ',
                          style: TextStyle(
                              color: currencyColor,
                              fontFamily: arabicRoman
                          ),),
                      ],
                    ),




                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(2.safeBlockHorizontal()),
                  topLeft: Radius.circular(2.safeBlockHorizontal()),
                ),

              ),
              width: SizeConfig().screenWidth,
              height: 14.68.safeBlockVertical(),
              child:list ,
            )
          ],
        ),
      ),
    );
  }
}
