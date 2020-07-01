import 'package:eatmore_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
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
                        borderRadius: BorderRadius.all(Radius.circular(5)),
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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) => null),
                          );
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
    );
  }
}
