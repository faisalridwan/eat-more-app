import 'package:eatmore_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dotted_border/dotted_border.dart';

class PopAlertEdit extends StatefulWidget {
  @override
  _PopAlertEditState createState() => _PopAlertEditState();
}

class _PopAlertEditState extends State<PopAlertEdit> {
  String newValue;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      contentPadding: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
      content: SingleChildScrollView(
        child: Container(
          width: 355,
          height: 666,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 14, bottom: 13),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 3),
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
                        "Edit Product",
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
                height: 12,
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
                        "Photo Product",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 105,
                        child: Stack(
                          children: <Widget>[
                            Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: Color(0xffF2F2F4))),
                                 ),
                            Positioned(
                              bottom: 1,
                              right: 1,
                              child: Container(
                                margin: EdgeInsets.only(top: 25),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(22))),
                                child: Icon(
                                  MaterialCommunityIcons.pencil_outline,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Product Name",
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
                          fillColor: Color(0xFFF2F2F2),
                          hintText: 'E.g Add Some Sugar',
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
                        height: 15,
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 44,
                        decoration: BoxDecoration(
                            color: Color(0xFFE6e6e6),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Color(0xFFE6e6e6))),
                        child: Row(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              height: 43,
                              width: 44,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Rp.",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.black,
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              height: 43,
                              width: MediaQuery.of(context).size.width * 0.615,
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.normal),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF2F2F2),
                                  hintText: 'E.g 125.000',
                                  hintStyle: TextStyle(
                                      fontSize: 14.0,
                                      color: Color(0xFF9F9F9F),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.normal),
                                  contentPadding: EdgeInsets.only(
                                      left: 14, bottom: 14, top: 14),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFffffff)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    borderSide:
                                        BorderSide(color: Color(0xFFffffff)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Category",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                height: 44,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xFFE6e6e6))),
                                child: Container(
                                  margin: EdgeInsets.only(left: 9),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                        //hint: Text('Choose'),
                                        onChanged: (String changedValue) {
                                          newValue = changedValue;
                                          setState(() {
                                            newValue;
                                            print(newValue);
                                          });
                                        },
                                        hint: Text("None"),
                                        value: newValue,
                                        items: <String>[
                                          'None',
                                          'Fast Food',
                                          'Halal',
                                          'Junk Food',
                                          'Korean Food',
                                          'Drink',
                                          'Chinese Food',
                                        ].map((String value) {
                                          return new DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList()),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Stock Product",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                height: 44,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xFFE6e6e6))),
                                child: Container(
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.normal),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xFFF2F2F2),
                                      hintText: 'E.g 325',
                                      hintStyle: TextStyle(
                                          fontSize: 14.0,
                                          color: Color(0xFF9F9F9F),
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.normal),
                                      contentPadding: EdgeInsets.only(
                                          left: 14, bottom: 14, top: 14),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFffffff)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        borderSide: BorderSide(
                                            color: Color(0xFFffffff)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Capital Price",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: 44,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE6e6e6),
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xFFE6e6e6))),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      color: Colors.white,
                                      height: 41,
                                      width: 39,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Rp.",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black,
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 43,
                                      width: MediaQuery.of(context).size.width *
                                          0.225,
                                      child: TextField(
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.normal),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xFFF2F2F2),
                                          hintText: 'E.g 85.000',
                                          hintStyle: TextStyle(
                                              fontSize: 14.0,
                                              color: Color(0xFF828282),
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.normal),
                                          contentPadding: EdgeInsets.only(
                                              left: 14, bottom: 14, top: 14),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFffffff)),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            borderSide: BorderSide(
                                                color: Color(0xFFffffff)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Selling",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: 44,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE6e6e6),
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xFFE6e6e6))),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      color: Colors.white,
                                      height: 41,
                                      width: 39,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Rp.",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black,
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 43,
                                      width: MediaQuery.of(context).size.width *
                                          0.225,
                                      child: TextField(
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.normal),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xFFF2F2F2),
                                          hintText: 'E.g 125.000',
                                          hintStyle: TextStyle(
                                              fontSize: 14.0,
                                              color: Color(0xFF828282),
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.normal),
                                          contentPadding: EdgeInsets.only(
                                              left: 14, bottom: 14, top: 14),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFffffff)),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            borderSide: BorderSide(
                                                color: Color(0xFFffffff)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 36,
                        color: Color(0xffF5F5F5),
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
                              "Delete this Product",
                              style: TextStyle(
                                  color: Color(0xffEB5757),
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
      ),
    );
  }
}
