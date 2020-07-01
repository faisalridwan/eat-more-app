import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/pages/order/neworder_page.dart';
import 'package:eatmore_app/pages/order/checkin_page.dart';
import 'package:eatmore_app/pages/order/submitted_page.dart';
import 'package:flutter/material.dart';

class TabBarOrder extends StatefulWidget {
  @override
  _TabBarOrderState createState() => _TabBarOrderState();
}

class _TabBarOrderState extends State<TabBarOrder> {
  Color selectedTabBarNotif = Colors.black;
  Color unselectedTabBarNotif = Color(0xffC4C4C4);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Color(0xffE5E5E5),
            elevation: 0,
            flexibleSpace: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffFAFAFA),
                ),
                margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: TabBar(
                    unselectedLabelColor: Color(0xff999999),
                    labelColor: Colors.black,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: mainColor),
                    tabs: [
                      Tab(
                        child: Stack(
                          children: <Widget>[
                            Align(
                              child: Text(
                                "Check In",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Stack(
                          children: <Widget>[
                            Align(
                              child: Text(
                                "New Order",
                              ),
                            ),
                            Positioned(
                                right: 4,
                                top: 11,
                                child: Icon(
                                  Icons.brightness_1,
                                  color: unselectedTabBarNotif,
                                  size: 8.0,
                                )),
                          ],
                        ),
                      ),
                      Tab(
                        child: Stack(
                          children: <Widget>[
                            Align(
                              child: Text(
                                "Submitted",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          CheckInPage(),
          NewOrderPage(),
          SubmittedPage(),
        ]),
      ),
    );
  }
}
