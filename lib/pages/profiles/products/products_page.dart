import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/dummy/chekincontent.dart';
import 'package:eatmore_app/dummy/datagenerator.dart';
import 'package:eatmore_app/pages/profiles/products/popup_editproduct.dart';
import 'package:eatmore_app/pages/profiles/products/popup_newproduct.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  bool status = false;

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
                          "Products",
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
                          "Search Products",
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
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return PopAlertNew();
                                    });
                              },
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
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return PopAlertEdit();
                                      });
                                },
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
                                    color: Color(0xff828282),
                                    size: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              FlutterSwitch(
                                activeColor: mainColor,
                                inactiveColor: Color(0xffEBEBEB),
                                width: 52.0,
                                height: 32.0,
                                value: status,
                                onToggle: (val) {
                                  setState(() {
                                    status = val;
                                  });
                                },
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
}
