import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/utils/bottomnavigation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(child: Image.asset("assets/images/Eatmore-logo-01.png")),
              Center(
                child: Text(
                  "login to start your business",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF999999),
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 59,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(38, 0, 38, 0),
                child: Text(
                  "Email Address",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF151522),
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(38, 0, 38, 0),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.w300,
                      fontSize: 13),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE6E6E6)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE6E6E6)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE6E6E6)),
                    ),
                    hintText: 'Email Address',
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(38, 0, 38, 0),
                child: Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF151522),
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(38, 0, 38, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.w300,
                      fontSize: 13),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE6E6E6)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE6E6E6)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE6E6E6)),
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 49,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            BottomNavCustom()),
                  );
                },
                child: new Container(
                  height: 55,
                  margin: EdgeInsets.only(right: 35, left: 35),
                  decoration: new BoxDecoration(
                    color: mainColor,
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Center(
                    child: new Text(
                      'Login',
                      style: new TextStyle(
                          fontSize: 18.0, color: Color(0xff333333)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => null),
                  );
                },
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Color(0xff64A0F9)),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
