import 'package:eatmore_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderListPage extends StatefulWidget {
  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
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
                  "Cancel",
                  style: TextStyle(
                      color: mainColor,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: RichText(
                        text: TextSpan(
                          text: "Order ",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: blackColor),
                          children: [
                            TextSpan(
                              text: "List",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 24,
                                  color: blackColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: RichText(
                        text: TextSpan(
                          text: "Order ID ",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: blackColor),
                          children: [
                            TextSpan(
                              text: "20000010012",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: blackColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: <Widget>[
                      Text("Glen",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: blackColor)),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      Text("Table 20",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: blackColor)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 20),
                  child: Row(
                    children: <Widget>[
                      Text("Saturday, March 24 2020",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: blackColor)),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      Text("12:00 PM",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: blackColor)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              width: 151,
                              child: Text(
                                "Lorem Ipsum dolor sit amet",
                                style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: blackColor),
                              )),
                          Spacer(
                            flex: 5,
                          ),
                          Text(
                            "1x",
                            style: TextStyle(
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: blackColor),
                          ),
                          Spacer(
                            flex: 4,
                          ),
                          Text("Rp. 50.000",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: blackColor)),
                        ],
                      ),
                      (true)
                          ? Container(
                              width: 151,
                              margin: EdgeInsets.only(top: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: "Comment :",
                                  style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: blackColor),
                                  children: [
                                    TextSpan(
                                      text: ' "Gapake lama ya" ',
                                      style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xff999999)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              width: 151,
                              child: Text(
                                "Lorem Ipsum dolor sit amet",
                                style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: blackColor),
                              )),
                          Spacer(
                            flex: 5,
                          ),
                          Text(
                            "1x",
                            style: TextStyle(
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: blackColor),
                          ),
                          Spacer(
                            flex: 4,
                          ),
                          Text("Rp. 50.000",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: blackColor)),
                        ],
                      ),
                      (false)
                          ? Container(
                              width: 151,
                              margin: EdgeInsets.only(top: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: "Comment :",
                                  style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: blackColor),
                                  children: [
                                    TextSpan(
                                      text: ' "Gapake lama ya" ',
                                      style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xff999999)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 90,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => null));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(12)),
                  width: MediaQuery.of(context).size.width*0.89,
                  height: 50,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => null));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Add Items",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(12)),
                  width: MediaQuery.of(context).size.width*0.89,
                  height: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
