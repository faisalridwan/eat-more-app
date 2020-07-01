import 'foodcontent.dart';

class FoodGenerator {
  static var foodList = [
    FoodContent("Glen", "22"),
    FoodContent("Martinus", "20"),
    FoodContent("Raymond", "01"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
    FoodContent("Marion", "19"),
  ];

  static FoodContent getFoodContent(int position) => foodList[position];
  static int foodListLength = foodList.length;
}
