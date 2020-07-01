
import 'package:eatmore_app/pages/report/report_page.dart';
import 'package:eatmore_app/utils/tabbar_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavCustom extends StatefulWidget {
  @override
  _BottomNavCustomState createState() => _BottomNavCustomState();
}

class _BottomNavCustomState extends State<BottomNavCustom> {
  int selectedIndex = 0;
  Color backgroundColorNav = Colors.black;

  List<NavigationItem> items = [
    NavigationItem('assets/images/order-logo.svg', Text('Order')),
    NavigationItem('assets/images/report-logo.svg', Text('Report')),
    NavigationItem('assets/images/profile-logo.svg', Text('Profile')),
  ];

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return Container(
      height: 36,
      width: 117,
      padding: EdgeInsets.only(left: 20, right: 16),
      decoration: isSelected
          ? BoxDecoration(
              color: Color(0xffFDB526),
              borderRadius: BorderRadius.all(Radius.circular(8)))
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                item.icon,
                color: isSelected ? Color(0xff333333) : Color(0xffBDBDBD),
                height: 24,
                width: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: isSelected
                    ? DefaultTextStyle.merge(
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        child: item.title)
                    : DefaultTextStyle.merge(
                        style: TextStyle(
                            color: Color(0xffBDBDBD),
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        child: item.title),
              )
            ],
          ),
        ],
      ),
    );
  }
  final List<Widget> screens = [
    TabBarOrder(), ReportPage(), Center(child: Text('PROFILE'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 68,
        padding: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)]),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.map((item) {
            var itemIndex = items.indexOf(item);
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = itemIndex;
                });
              },
              child: _buildItem(item, selectedIndex == itemIndex),
            );
          }).toList(),
        ),
      ),
        body:  screens[selectedIndex],
    );

  }
}

class NavigationItem {
  final String icon;
  final Text title;

  NavigationItem(this.icon, this.title);
}
