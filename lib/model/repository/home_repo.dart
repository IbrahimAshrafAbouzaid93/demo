import 'package:task1/model/data/main_category_model.dart';
import 'package:task1/model/data/sub_category_model.dart';

class HomeRepository {
  HomeRepository._internal();

  static final HomeRepository _instance = HomeRepository._internal();

  factory HomeRepository() => _instance;
  List<SubCategoryModel> subCategoryList = [
    SubCategoryModel(
        imageUrl: 'assetes/images/pizza-slice.svg', title: 'بيتزا'),
    SubCategoryModel(
        imageUrl: 'assetes/images/hamburger.svg', title: 'سندوتشات'),
    SubCategoryModel(
        imageUrl: 'assetes/images/coffee-cup.svg', title: 'مشروبات'),
  ];
  List<SubCategoryModel> payList = [
    SubCategoryModel(
        imageUrl: 'assetes/images/item1.png', ),
    SubCategoryModel(
      imageUrl: 'assetes/images/item2.png', ),
    SubCategoryModel(
      imageUrl: 'assetes/images/item3.png', ),
    SubCategoryModel(
      imageUrl: 'assetes/images/item4.png', ),
    SubCategoryModel(
      imageUrl: 'assetes/images/item5.png', ),
    SubCategoryModel(
      imageUrl: 'assetes/images/item6.png', ),


  ];
  List<MainCategoryModel> mainCategoryList = [
    MainCategoryModel(
        calUrl: 'assetes/images/Cal Label.svg',
        imageUrl: 'assetes/images/item1.png',
        price: '7.50',
        itemName: 'عصير تفاح 250مل',
        count: '5  '),
    MainCategoryModel(
        calUrl: 'assetes/images/Cal Label.svg',
        imageUrl: 'assetes/images/item2.png',
        price: '7.50',
        itemName: 'عصير تفاح 250مل',
        count: '5  '),
    MainCategoryModel(
        calUrl: 'assetes/images/Cal Label.svg',
        imageUrl: 'assetes/images/item3.png',
        price: '7.50',
        itemName: 'عصير تفاح 250مل',
        count: '5  '),
    MainCategoryModel(
        calUrl: 'assetes/images/Cal Label.svg',
        imageUrl: 'assetes/images/item4.png',
        price: '7.50',
        itemName: 'عصير تفاح 250مل',
        count: '5  '),
    MainCategoryModel(
        calUrl: 'assetes/images/Cal Label.svg',
        imageUrl: 'assetes/images/item5.png',
        price: '7.50',
        itemName: 'عصير تفاح 250مل',
        count: '5   '),
    MainCategoryModel(
        calUrl: 'assetes/images/Cal Label.svg',
        imageUrl: 'assetes/images/item6.png',
        price: '7.50',
        itemName: 'عصير تفاح 250مل',
        count: '5   '),
  ];
}
