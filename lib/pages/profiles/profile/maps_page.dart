import 'package:eatmore_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(3.595196, 98.672226),
              zoom: 14.0,
            ),
          ),
          Positioned(
            left: 30,
            right: 30,
            bottom: 30,
            child: Container(
              height: 212,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 0.62,
                        height: 44,
                        child: TextField(
                          autofocus: false,
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFAFAFA),
                            hintText: 'Find Location',
                            hintStyle: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF999999),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.normal),
                            contentPadding:
                                EdgeInsets.only(left: 16, bottom: 14, top: 14),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFF2F2F2)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Color(0xFFEF2F2F2)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Color(0xfff2f2f2)),
                        ),
                        child: Icon(
                          Icons.my_location,
                          color: Color(0xff26CCFF),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 40,
                    child: Text(
                      "Jalan Pemuda No.1 Olo, Kec. Padang Barat, Kota Padang, Sumatra barat",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: blackColor,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 160,
                          height: 48,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: blackColor,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 169,
                            height: 48,
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              "Set Location",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: blackColor,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
