import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/pages/order/pospage/posFastFood_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PosOnlinePage extends StatefulWidget {
  @override
  _PosOnlinePageState createState() => _PosOnlinePageState();
}

class _PosOnlinePageState extends State<PosOnlinePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
            width: 70,
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
                    "Cancel",
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
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Color(0xffCCCCCC),
            labelColor: Colors.amber,
            indicator: BoxDecoration(
                border: Border(bottom: BorderSide(color: mainColor, width: 5))),
            tabs: <Widget>[
              Tab(
                child: tabText("Fast Food"),
              ),
              Tab(
                child: tabText("Halal"),
              ),
              Tab(
                child: tabText("Junk Food"),
              ),
              Tab(
                child: tabText("Korean Food"),
              ),
              Tab(
                child: tabText("Drink"),
              ),
              Tab(
                child: tabText("Chinese Food"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            POSFastFoodPage(),
            Text("This is chat Tab View"),
            Text("This is notification Tab View"),
            Text("This is notification Tab View"),
            Text("This is notification Tab View"),
            Tab(
              text: "Fast Food",
            ),
          ],
        ),
      ),
    );
  }

  Text tabText(String text) => Text(
        text,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      );
}
