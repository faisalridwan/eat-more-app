import 'package:eatmore_app/pages/profiles/catalog/catalog_page.dart';
import 'package:eatmore_app/pages/profiles/printer/printer_page.dart';
import 'package:eatmore_app/pages/profiles/products/products_page.dart';
import 'package:eatmore_app/pages/profiles/profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilesPage extends StatefulWidget {
  @override
  _ProfilesPageState createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 52, left: 18, right: 17),
            height: 94,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                border: Border.all(color: Color(0xffE7E7E7))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 12, right: 12),
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Color(0xffcccccc),
                      borderRadius: BorderRadius.all(Radius.circular(60))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sweet Bakery Co.",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      "Soekarno street 12, Las vegas",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Color(0xff828282)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 49,
          ),
          buildTabsMenu(
              'Profile', "assets/images/restaurant-menu.svg", ProfilePage()),
          buildGaris(),
          buildTabsMenu('Catalog', "assets/images/catalog.svg", CatalogPage()),
          buildGaris(),
          buildTabsMenu(
              'Products', "assets/images/products.svg", ProductsPage()),
          buildGaris(),
          buildTabsMenu('Printer', "assets/images/multifunction-printer.svg",
              PrinterPage()),
        ],
      ),
    );
  }

  Padding buildGaris() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Divider(
        height: 1,
        color: Color(0xffcccccc),
      ),
    );
  }

  Widget buildTabsMenu(String name, String ico, Widget route) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) => route));
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 22),
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(right: 18),
                child: SvgPicture.asset(ico)),
            Expanded(
              child: Text(
                name,
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
            SvgPicture.asset("assets/images/arrow.svg")
          ],
        ),
      ),
    );
  }
}
