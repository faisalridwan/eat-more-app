import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/dummy/chekincontent.dart';
import 'package:eatmore_app/dummy/datagenerator.dart';
import 'package:eatmore_app/pages/order/orderlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class PrinterPage extends StatefulWidget {
  @override
  _PrinterPageState createState() => _PrinterPageState();
}

class _PrinterPageState extends State<PrinterPage> {
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
                          "Printer",
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
                          "Search Printer",
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
                            hintText: 'E.g Thermal A',
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
                              onTap: () => addHardwareFoundBox(),
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
                                    Feather.printer,
                                    size: 16,
                                    color: Color(0xff828282),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
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

  addHardwareSearchingBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            contentPadding:
                EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
            content: Container(
              width: 335,
              height: 352,
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
                            "Add hardware",
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
                    height: 27,
                  ),
                  SvgPicture.asset("assets/images/bluetoothserch.svg"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Searching For Devices ...",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        });
  }

  addHardwarePairingBox() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          contentPadding: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
          content: Container(
            width: 335,
            height: 352,
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
                          "Add hardware",
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
                  height: 27,
                ),
                SvgPicture.asset("assets/images/bluetoothserch.svg"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pairing Devices ...",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  addHardwareFoundBox() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          contentPadding: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
          content: Container(
            width: 335,
            height: 352,
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
                          "Add hardware",
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
                  height: 16,
                ),
                Text(
                  "Found 2 Pinter Devices",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 14, right: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: mainColor,
                        ),
                        child: Icon(
                          Feather.check,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Mini Printer Thermal",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Epson 5231",
                              style: TextStyle(
                                  color: Color(0xffBDBDBD),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Wi-fi",
                        style: TextStyle(
                            color: Color(0xffBDBDBD),
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 14, right: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Printer Tetangga",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Hp 4215",
                              style: TextStyle(
                                  color: Color(0xffBDBDBD),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Bluetooh",
                        style: TextStyle(
                            color: Color(0xffBDBDBD),
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 51,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
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
        );
      },
    );
  }

  addHardwareSuccessBox() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          contentPadding: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
          content: Container(
            width: 335,
            height: 352,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                SvgPicture.asset("assets/images/success.svg"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pairing Succesfully",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
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
                        "Done",
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
        );
      },
    );
  }
}
