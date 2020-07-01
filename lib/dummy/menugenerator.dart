import 'menucontent.dart';

class MenuGenerator {
  static var menuList = [
    MenuContent("Tea Mojito Palm Juice", "170.000"),
    MenuContent("Tea Mojito Palm Juice", "170.000"),
    MenuContent("Tea Mojito Palm Juice", "170.000"),
    MenuContent("Tea Mojito Palm Juice", "170.000"),
    MenuContent("Tea Mojito Palm Juice", "170.000"),
    MenuContent("Tea Mojito Palm Juice", "170.000"),
    MenuContent("Tea Mojito Palm Juice", "170.000"),
    MenuContent("Tea Mojito Palm Juice", "170.000"),
    
    
  ];

  static MenuContent getMenuContent(int position) => menuList[position];
  static int menuListLength = menuList.length;
}
