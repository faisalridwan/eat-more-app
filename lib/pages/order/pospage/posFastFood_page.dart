import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/dummy/foodcontent.dart';
import 'package:eatmore_app/dummy/foodgenerator.dart';
import 'package:eatmore_app/dummy/menucontent.dart';
import 'package:eatmore_app/dummy/menugenerator.dart';
import 'package:eatmore_app/pages/order/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class POSFastFoodPage extends StatefulWidget {
  @override
  _POSFastFoodPageState createState() => _POSFastFoodPageState();
}

class _POSFastFoodPageState extends State<POSFastFoodPage> {
  TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(24, 17, 24, 16),
              child: TextField(
                autofocus: false,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xB4FFFFFF),
                  hintText: 'Search Items',
                  hintStyle: TextStyle(
                      fontSize: 14.0,
                      color: Color(0x44000000),
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.normal),
                  contentPadding:
                      const EdgeInsets.only(left: 14, bottom: 14, top: 14),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(
                height: 2,
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      index == FoodGenerator.foodListLength - 1
                          ? Container()
                          : Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: Divider(
                                height: 1,
                                color: Color(0xffC4C4C4),
                              ),
                            ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: FoodGenerator.foodListLength,
                  itemBuilder: (context, position) {
                    FoodContent foodContent =
                        FoodGenerator.getFoodContent(position);
                    return Container(
                      margin: EdgeInsets.fromLTRB(24, 13, 24, 12),
                      child: Stack(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 98,
                                height: 98,
                                color: Color(0xffE5E5E5),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(left: 18),
                                      child: Text(
                                        foodContent.name,
                                        style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19,
                                            color: Colors.black),
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(left: 18, top: 5),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Rp. ",
                                        style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: mainColor),
                                        children: [
                                          TextSpan(
                                            text: foodContent.price,
                                            style: TextStyle(
                                                fontFamily: "Rubik",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: mainColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 2,
                            right: 5,
                            child: InkWell(
                              onTap: () => openAlertBox(),
                              child: Container(
                                  child: Text(
                                "Add Item",
                                style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: mainColor),
                              )),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Positioned(
          child: DraggableScrollableSheet(
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.5,
              builder: (context, scrollController) {
                return Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      height: screenHeight * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0))),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      bottom: 10.0,
                                      top: 8,
                                    ),
                                    height: 6,
                                    width: 43,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF2F2F2),
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      bottom: 24, right: 20, left: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          text: "0",
                                          style: TextStyle(
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.black),
                                          children: [
                                            TextSpan(
                                              text: " items",
                                              style: TextStyle(
                                                  fontFamily: "Rubik",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: "Rp. ",
                                          style: TextStyle(
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color(0xff56CCF2)),
                                          children: [
                                            TextSpan(
                                              text: "375.000",
                                              style: TextStyle(
                                                  fontFamily: "Rubik",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Color(0xff56CCF2)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Container(
                                  child: Expanded(
                                    child: SingleChildScrollView(
                                      child: ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              MenuGenerator.menuListLength,
                                          itemBuilder: (context, position) {
                                            MenuContent menuContent =
                                                MenuGenerator.getMenuContent(
                                                    position);
                                            return Container(
                                              margin: EdgeInsets.only(
                                                  left: 24, right: 24, top: 20),
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 151,
                                                      child: Text(
                                                        menuContent.name,
                                                        style: TextStyle(
                                                            fontFamily: "Rubik",
                                                            fontSize: 14,
                                                            color:
                                                                Colors.black),
                                                      )),
                                                  Spacer(
                                                    flex: 3,
                                                  ),
                                                  Text(
                                                    "2x",
                                                    style: TextStyle(
                                                        fontFamily: "Rubik",
                                                        fontSize: 14,
                                                        color: Colors.black),
                                                  ),
                                                  Spacer(
                                                    flex: 2,
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      text: "Rp. ",
                                                      style: TextStyle(
                                                          fontFamily: "Rubik",
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              menuContent.price,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "Rubik",
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(
                                                    flex: 1,
                                                  ),
                                                  // SvgPicture.asset(
                                                  //   "assets/images/delete-logo.svg",
                                                  //   color: Color(0xffED0E0E),
                                                  //   height: 12,
                                                  //   width: 17,
                                                    
                                                  // ),
                                                  Icon(
                                                    Icons.delete_outline,
                                                    color: Colors.red,
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 0,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CheckOutPage()),
                                )
                                    .then((result) {
                                  DraggableScrollableActuator.reset(context);
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Place Order",
                                  style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.circular(12)),
                                width: 300,
                                height: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            contentPadding:
                EdgeInsets.only(top: 18, left: 20, right: 20, bottom: 20),
            content: Container(
              width: 330.0,
              height: 344,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Tea Mojito Palm Juice",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Rp. ",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                      children: [
                        TextSpan(
                          text: "85.000",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: mainColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 48,
                        width: 295,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              text: "2",
                              style: TextStyle(
                                fontFamily: "Rubik",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: " item",
                                  style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(2),
                            height: 44,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              border: Border.all(
                                color: Color(
                                    0xFFBBB8B8), //                   <--- border color
                                width: 1,
                              ),
                            ),
                            child: Align(
                                alignment: Alignment.center, child: Text("-")),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            height: 44,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              border: Border.all(
                                color: Color(
                                    0xFFBBB8B8), //                   <--- border color
                                width: 1,
                              ),
                            ),
                            child: Align(
                                alignment: Alignment.center, child: Text("+")),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 20,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Add Notes",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    autofocus: false,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.normal),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF2F2F2),
                      hintText: 'e.g. "Add some sugar"',
                      hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0x44000000),
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.normal),
                      contentPadding:
                          const EdgeInsets.only(left: 14, bottom: 14, top: 14),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF2F2F)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF2F2F)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Add Item (Rp. 170.000)",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(12)),
                      width: 300,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
