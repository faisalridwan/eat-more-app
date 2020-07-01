import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/dummy/chekincontent.dart';
import 'package:eatmore_app/dummy/datagenerator.dart';
import 'package:eatmore_app/pages/order/orderlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 56),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: 60,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/images/back-logo.svg',
                                color: mainColor,
                                height: 14,
                                width: 8,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                    color: mainColor,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Catalog",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 178,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 27, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Search Catalog",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 6,
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
                            fillColor: Color(0xFFFAFAFA),
                            hintText: 'E.g Fastfood',
                            hintStyle: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF9F9F9F),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.normal),
                            contentPadding:
                                EdgeInsets.only(left: 14, bottom: 14, top: 14),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6e6e6)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xFFE6e6e6)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 36,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(4),
                              onTap: () => newCategoryBox(),
                              child: Center(
                                child: Text(
                                  "Add New Products",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Divider(
                          height: 1,
                          color: Color(0xffC4C4C4),
                        ),
                      ),
                  itemCount: DataGenerator.dataListLength,
                  itemBuilder: (context, position) {
                    DataContent dataContent =
                        DataGenerator.getDataContent(position);
                    return Container(
                      margin: position == 0
                          ? EdgeInsets.fromLTRB(20, 0, 20, 17)
                          : EdgeInsets.fromLTRB(20, 18, 20, 17),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    dataContent.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000),
                                        fontSize: 16.0,
                                        fontFamily: "Rubik"),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      dataContent.table,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xffC4C4C4),
                                          fontSize: 14.0,
                                          fontFamily: "Rubik"),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      dataContent.time,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xffC4C4C4),
                                          fontSize: 14.0,
                                          fontFamily: "Rubik"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () => editCategoryBox(),
                                child: Container(
                                  margin: EdgeInsets.only(left: 24),
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      color: Color(0xfffafafa),
                                      border:
                                          Border.all(color: Color(0xFFE6e6e6)),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Icon(
                                    Feather.edit,
                                    size: 16,
                                    color: Color(0xff828282),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              InkWell(
                                onTap: () => deleteCategoryBox(),
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      color: Color(0xfffafafa),
                                      border:
                                          Border.all(color: Color(0xFFE6e6e6)),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Icon(
                                    Feather.trash,
                                    size: 16,
                                    color: Color(0xffEB5757),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  editCategoryBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            contentPadding:
                EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
            content: Container(
              width: 355,
              height: 207,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 13, bottom: 13),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 1),
                          width: 60,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 21,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Category Edit",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 16, 20, 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Category Title",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
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
                              fillColor: Color(0xFFFAFAFA),
                              hintText: 'E.g Add Some Sugar',
                              hintStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xFF9F9F9F),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.normal),
                              contentPadding: EdgeInsets.only(
                                  left: 14, bottom: 14, top: 14),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE6e6e6)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide:
                                    BorderSide(color: Color(0xFFE6e6e6)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 36,
                              color: mainColor,
                              width: MediaQuery.of(context).size.width,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            null),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    "Save Changes",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  newCategoryBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            contentPadding:
                EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
            content: Container(
              width: 355,
              height: 207,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 13, bottom: 13),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 1),
                          width: 60,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 21,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "New Category",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 16, 20, 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Category Title",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
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
                              fillColor: Color(0xFFFAFAFA),
                              hintText: 'E.g Add Some Sugar',
                              hintStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xFF9F9F9F),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.normal),
                              contentPadding: EdgeInsets.only(
                                  left: 14, bottom: 14, top: 14),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE6e6e6)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide:
                                    BorderSide(color: Color(0xFFE6e6e6)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 36,
                            color: mainColor,
                            width: MediaQuery.of(context).size.width,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => null),
                                );
                              },
                              child: Center(
                                child: Text(
                                  "Create New",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  deleteCategoryBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            contentPadding:
                EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
            content: Container(
              width: 355,
              height: 283,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 13, bottom: 13),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 1),
                          width: 60,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 21,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "New Category",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 5,
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Text(
                    "You Want To Delete This Category ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Deleteing category will effect to your product category",
                    style: TextStyle(
                      color: Color(0xff828282),
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 36,
                    width: 295,
                    color: Color(0xffF5F5F5),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Color(0xff3D87F4),
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    "Yes! Deleted this Category",
                    style: TextStyle(
                        color: Color(0xffEB5757),
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
