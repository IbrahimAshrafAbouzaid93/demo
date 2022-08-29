import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:task1/view/application_helper/application_utils/app_constants/app_repo_constants.dart';
import 'package:task1/view/application_helper/application_utils/app_extension/size_extension.dart';
import 'package:task1/view/application_helper/application_utils/color_utils/colors.dart';
import 'package:task1/view/application_helper/application_utils/image_path_utils/image_path_file.dart';
import 'package:task1/view/application_helper/size_config.dart';
import 'package:task1/view/widgets/common_text_controller.dart';
import 'package:task1/view/widgets/grid_view_builder_widget.dart';
import 'package:task1/view/widgets/search_result_widget.dart';
import 'package:task1/view/widgets/svg_image_widget.dart';
import 'package:task1/view_model/main_category_view_model.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController userNameTextEditingController =
      TextEditingController();
  final GlobalKey<FormFieldState> userNameFormFieldState = GlobalKey();
  final userNameFocus = FocusNode();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainCategoryViewModel>(
      init:Get.put(MainCategoryViewModel()) ,
      builder:(ref)=> Container(
        color: appBarColor,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: SizeConfig().screenWidth,
                height: .5.safeBlockHorizontal(),
                color: splitColor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    CommonTextControllers.customTextField(
                        controller: userNameTextEditingController,
                        formKey: userNameFormFieldState,
                        focusNode: userNameFocus,
                        labelText: 'اسم الطالب',
                        height: 15.safeBlockHorizontal(),
                        width: SizeConfig().screenWidth * .5,
                        isObscureText: false,
                        keyboardType: TextInputType.text,
                        suffix: IconButton(onPressed: (){
                          ref.resetDetails();
                        }, icon: Icon(Icons.search,color: gray,)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'لا يمكن ادخال اسم الطالب فارغا';
                          } else {
                            return null;
                          }
                        },
                        onSubmitted: (value) {}),
                       SvgImageWidget(imagePath: searchImageScreen),
                    SvgImageWidget(imagePath: profileImage),

                  ],
                ),
              ),
              Expanded(
                child: Container(

                  width: SizeConfig().screenWidth ,
                  height: SizeConfig().screenHeight,
                  decoration: BoxDecoration(
                    color: whiteGray,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(2.safeBlockHorizontal()),
                      topLeft: Radius.circular(2.safeBlockHorizontal()),
                    ),

                  ),
                  child: ListView(
                    children: [
                   ref.isDetails.value?  SearchResultWidget(
                       list: Column(
                         children: [
                           SizedBox(
                             width: SizeConfig().screenWidth,
                             height: 17.safeBlockHorizontal(),
                             child: ListView.builder(

                                 shrinkWrap: true,
                                 scrollDirection: Axis.horizontal,
                                 itemCount: ref.payList.length,
                                 itemBuilder: (context,index){

                                   return Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Stack(
                                       children: [

                                         Container(
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius:
                                             BorderRadius.all(Radius.circular(2.safeBlockHorizontal())),
                                             border: Border.all(color: whiteGray)
                                           ),

                                           width: 15.safeBlockHorizontal(),
                                           height: 8.safeBlockVertical(),
                                           child: Image.asset(ref.payList[index].imageUrl??""),


                                         ),
                                         Row(
                                           children: [
                                             Image.asset('assetes/images/Delete.png'),
                                             Container(
                                               decoration: BoxDecoration(
                                                 color:textThemeColor,
                                                 shape: BoxShape.circle,
                                               ),
                                               width: 25,
                                               height: 25,
                                               child: const Center(
                                                 child: Text('1',
                                                   style: TextStyle(
                                                       color: Colors.white
                                                   ),),
                                               ),
                                             )
                                           ],
                                         ),
                                       ],
                                     ),
                                   );
                                 }),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(3),
                                 child: Row(
                                   children: [
                                     Text('الاجمالي',
                                       style: TextStyle(
                                           color: blackColor,
                                           fontFamily: arabicRoman
                                       ),),
                                     const SizedBox(width: 5,),
                                     Text('10 ريال',
                                       style: TextStyle(
                                           color:textThemeColor,
                                           fontFamily: arabicRoman
                                       ),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(3),
                                 child: Image.asset(payButton),
                               ),

                             ],
                           )

                         ],
                       ) ,
                     ):const SizedBox.shrink(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [

                            Row(
                              children: [
                                SvgImageWidget(imagePath: allButton),
                                SizedBox(
                                  width: SizeConfig().screenWidth*.8,
                                  height: 17.safeBlockHorizontal(),
                                  child: ListView.builder(

                                     shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                      itemCount: ref.subCategoryList.length,
                                      itemBuilder: (context,index){

                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(2.safeBlockHorizontal())),
                                          ),

                                          width: 30.safeBlockHorizontal(),
                                          height: 5.safeBlockVertical(),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              SvgImageWidget(imagePath: ref.subCategoryList[index].imageUrl??""),
                                               Text('${ref.subCategoryList[index].title}',
                                               style: TextStyle(
                                                 color: textThemeColor,
                                                 fontFamily: arabicRoman
                                               ),)
                                            ],
                                          ),

                                        ),
                                      );
                                      }),
                                ),

                              ],

                            ),


                            SizedBox(
                              height: SizeConfig().screenHeight*.6,
                              child: GridViewBuilder(
                                itemCount: ref.mainCategoryList.length,
                                sliverGridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent:
                                  MediaQuery.of(context).size.width /
                                      1.2,
                                  childAspectRatio:
                                  (MediaQuery.of(context).size.width /
                                      3.5) /
                                      160,
                                ),
                                builder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(2.safeBlockHorizontal())),
                                      ),
                                      width: SizeConfig().screenWidth*.2,
                                      height: 25.safeBlockVertical(),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Align(

                                              alignment: Alignment.topLeft,

                                              child: Padding(
                                                padding:  EdgeInsets.only(left: 2.safeBlockHorizontal()),
                                                child: SvgImageWidget(imagePath: ref.mainCategoryList[index].calUrl??""),
                                              ),
                                          ),
                                      Image.asset(ref.mainCategoryList[index].imageUrl!),
                                          Text('${ref.mainCategoryList[index].itemName}',
                                            style: TextStyle(
                                                color: blackColor,
                                                fontFamily: arabicRoman
                                            ),),
                                          Wrap(
                                              spacing: 14, // to apply margin in the main axis of the wrap
                                              runSpacing: 14, // to apply margin in the cross axis of the wrap
                                              children: <Widget>[
                                                Text('الكميه المتاحه بالمخرن',
                                                  style: TextStyle(
                                                      color: blackColor,
                                                      fontFamily: arabicRoman
                                                  ),),
                                                Text('${ref.mainCategoryList[index].count}',
                                                  style: TextStyle(
                                                      color: textThemeColor,
                                                      fontFamily: arabicRoman
                                                  ),),
                                              ]
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                SizedBox(width: 2.safeBlockHorizontal(),),
                                                SvgImageWidget(imagePath: plusButton),
                                                SizedBox(width: 2.safeBlockHorizontal(),),
                                                Text('${ref.mainCategoryList[index].price}ريال',
                                                  style: TextStyle(
                                                      color: textThemeColor,
                                                      fontFamily: arabicRoman
                                                  ),),
                                              ],
                                            ),
                                          )


                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
