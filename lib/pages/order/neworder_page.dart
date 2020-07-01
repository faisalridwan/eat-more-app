import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/pages/order/orderlist_page.dart';
import 'package:eatmore_app/pages/order/posonline_page.dart';
import 'package:eatmore_app/dummy/chekincontent.dart';
import 'package:eatmore_app/dummy/datagenerator.dart';
import 'package:flutter/material.dart';

class NewOrderPage extends StatefulWidget {
  @override
  _NewOrderPageState createState() => _NewOrderPageState();
}

class _NewOrderPageState extends State<NewOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                margin: EdgeInsets.fromLTRB(16, 26, 16, 0),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) =>
                        index == DataGenerator.dataListLength - 1
                            ? Container()
                            : Container(
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
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  OrderListPage()));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 12, 20, 17),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(bottom: 2),
                                      child: Text(
                                        "Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xffC4C4C4),
                                            fontSize: 14.0,
                                            fontFamily: "Rubik"),
                                      ),
                                    ),
                                    Text(
                                      dataContent.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000),
                                          fontSize: 16.0,
                                          fontFamily: "Rubik"),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(bottom: 2),
                                      child: Text(
                                        "Table",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xffC4C4C4),
                                            fontSize: 14.0,
                                            fontFamily: "Rubik"),
                                      ),
                                    ),
                                    Text(
                                      dataContent.table,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000),
                                          fontSize: 16.0,
                                          fontFamily: "Rubik"),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    dataContent.time,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff000000),
                                        fontSize: 12.0,
                                        fontFamily: "Rubik"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
        Positioned(
          left: 24,
          right: 24,
          bottom: 30,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "New Order",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(12)),
              width: 300,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
