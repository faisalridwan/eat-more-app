import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/pages/profiles/profile/maps_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController bussinesNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController bussinesLocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
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
                      "Profile",
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
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Color(0xffcccccc),
                      borderRadius: BorderRadius.all(Radius.circular(60))),
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
                        borderRadius: BorderRadius.all(Radius.circular(22))),
                    child: Icon(
                      MaterialCommunityIcons.pencil_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 23, right: 23, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bussines Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  TextField(
                    controller: bussinesNameController,
                    decoration: InputDecoration(
                      hintText: 'Eg. "Pizza Mania"',
                      hintStyle: TextStyle(color: Color(0xffcccccc)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffcccccc)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffcccccc))),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffcccccc)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 23, right: 23, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Phone Number",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  TextField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      hintText: 'Eg. "081928xxxxxx"',
                      hintStyle: TextStyle(color: Color(0xffcccccc)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffcccccc)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffcccccc))),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffcccccc)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 23, right: 23, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Email Adress",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  TextField(
                    controller: bussinesNameController,
                    decoration: InputDecoration(
                      hintText: 'Eg. "Bakery@sweets.com"',
                      hintStyle: TextStyle(color: Color(0xffcccccc)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffcccccc)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffcccccc))),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffcccccc)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 23, right: 23, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bussines Location",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  TextField(
                    controller: bussinesNameController,
                    decoration: InputDecoration(
                      hintText: 'Eg. "Soekarno Strreet no.12"',
                      hintStyle: TextStyle(color: Color(0xffcccccc)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffcccccc)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffcccccc))),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffcccccc)),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    margin: EdgeInsets.only(right: 35, left: 35, top: 20),
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) => MapsPage()),
                        );
                      },
                      child: Center(
                        child: Text(
                          "Get Location",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
