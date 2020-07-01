import 'package:eatmore_app/constant/constant.dart';
import 'package:eatmore_app/dummy/reportscontent.dart';
import 'package:eatmore_app/dummy/reportsgenerator.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  List<ListItem> _tabItems;
  int _selectedTabIndex;

  @override
  void initState() {
    super.initState();

    _tabItems = <ListItem>[
      ListItem(
          'Customer',
          BorderRadius.only(
              bottomLeft: Radius.circular(6), topLeft: Radius.circular(6))),
      ListItem(
          'Report',
          BorderRadius.only(
              bottomRight: Radius.circular(6), topRight: Radius.circular(6))),
    ];

    _tabItems[0].isSelected = true;
    _selectedTabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(top: 57, left: 24, right: 24),
              child: _buildTitle(_selectedTabIndex)),
          SizedBox(
            height: 28,
          ),
          InkWell(
            onTap: () => openAlertBox(),
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildTabBar(),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 29,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                topLeft: Radius.circular(6)),
                            border: Border.all(color: Colors.black12),
                            color: Colors.white),
                        child: Center(
                            child: Text("Monthly",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14))),
                      ),
                      Container(
                        height: 29,
                        width: 31,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(6),
                                topRight: Radius.circular(6)),
                            border: Border.all(color: Colors.black12),
                            color: Colors.white),
                        child: Icon(Entypo.chevron_small_down),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildTabBody(_selectedTabIndex),
        ],
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          var list = <Widget>[
            RichText(
              text: TextSpan(
                text: "Filter ",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: "Your Search",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            filterSearch('All Status'),
            filterSearch('Transsaction'),
            filterSearch('Transsaction'),
            SizedBox(height: 5,),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Apply",
                  style: TextStyle(
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(12)),
                width: 342,
                height: 36,
              ),
            ),
          ];
          var children2 = list;
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            contentPadding:
                EdgeInsets.all(20),
            content: Container(
              width: 382.0,
              height: 370,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children2,
              ),
            ),
          );
        });
  }

  Column filterSearch(String status) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          status,
          style: TextStyle(
              fontFamily: "Rubik",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 101,
              height: 36,
              child: Text(
                "Succes",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff56CCF2),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 101,
              height: 36,
              child: Text(
                "On Hold",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black12)),
            ),
            Container(
              alignment: Alignment.center,
              width: 101,
              height: 36,
              child: Text(
                "Cancel",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black12)),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Widget _buildTabBar() {
    return Container(
      child: Row(
        children: List.generate(
          _tabItems.length,
          (index) => _buildTabItem(
            tabName: _tabItems[index],
            onPressed: () {
              setState(() {
                for (int i = 0; i < _tabItems.length; i++) {
                  if (i == index) {
                    _tabItems[i].isSelected = true;
                    _selectedTabIndex = i;
                  } else {
                    _tabItems[i].isSelected = false;
                  }
                }
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(int index) {
    switch (index) {
      case 0:
        return Container(
          child: RichText(
            text: TextSpan(
              text: "Customer ",
              style: TextStyle(
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black),
              children: [
                TextSpan(
                  text: "Growth",
                  style: TextStyle(
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        );
        break;
      case 1:
        return Container(
            child: Text(
          "Reports",
          style: TextStyle(
              fontFamily: "Rubik",
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black),
        ));
        break;
      default:
        return Container();
        break;
    }
  }

  Widget _buildTabBody(int index) {
    switch (index) {
      case 0:
        return costumerTabs();
        break;
      case 1:
        return reportsTabs();
        break;
      default:
        return Container();
        break;
    }
  }

  Widget costumerTabs() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: PointsLineChart(PointsLineChart._createSampleData(),
                    animate: false)),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25),
                  width: 105,
                  height: 96,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [Colors.red[200], Colors.red[300]])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "16",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        "Products",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 25),
                  width: MediaQuery.of(context).size.width * 0.585,
                  height: 96,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [Colors.yellow[700], Colors.yellow[800]])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 27.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Gross Total",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              "Rp. 11,900.00",
                              style: TextStyle(
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 42,
                        height: 42,
                        child:
                            SvgPicture.asset("assets/images/stacked-logo.svg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              width: MediaQuery.of(context).size.width,
              height: 96,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[400], Colors.blue[500]])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Gross Total",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        Text(
                          "Rp. 11,900.00",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 42,
                    height: 42,
                    child:
                        SvgPicture.asset("assets/images/stacked-logo-blue.svg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget reportsTabs() {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 17, left: 24, right: 24),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.76,
                  height: 45,
                  child: TextField(
                    autofocus: false,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.normal),
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF999999),
                      ),
                      fillColor: Color(0xFFFAFAFA),
                      hintText: 'Search Product or Order ID',
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
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xFFE6e6e6)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Color(0xfffafafa),
                      border: Border.all(color: Color(0xFFE6e6e6)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(Icons.filter_list),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xffE5E5E5),
              child: Scrollbar(
                child: Container(
                  margin: EdgeInsets.only(top: 15, left: 16, right: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              separatorBuilder: (context, index) => index ==
                                      ReportsGenerator.reportsListLength - 1
                                  ? SizedBox(
                                      height: 10,
                                    )
                                  : Container(
                                      margin: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 10,
                                          bottom: 10),
                                      child: Divider(
                                        height: 1,
                                        color: Color(0xffC4C4C4),
                                      ),
                                    ),
                              itemCount: ReportsGenerator.reportsListLength,
                              itemBuilder: (context, position) {
                                ReportsContent reportsContent =
                                    ReportsGenerator.getReportsContent(
                                        position);
                                return Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(bottom: 15),
                                            child: Text(
                                              reportsContent.id,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xFF000000),
                                                  fontSize: 14.0,
                                                  fontFamily: "Rubik"),
                                            ),
                                          ),
                                          Text(
                                            reportsContent.price,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff000000),
                                                fontSize: 16.0,
                                                fontFamily: "Rubik"),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(bottom: 15),
                                            child: Text(
                                              reportsContent.date,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xFF000000),
                                                  fontSize: 14.0,
                                                  fontFamily: "Rubik"),
                                            ),
                                          ),
                                          Text(
                                            reportsContent.status == true
                                                ? "Succes"
                                                : "Cancel",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: reportsContent.status ==
                                                        true
                                                    ? Color(0xff6FCF97)
                                                    : Color(0xffEB5757),
                                                fontSize: 16.0,
                                                fontFamily: "Rubik"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem({ListItem tabName, Function onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 29,
        width: 94,
        decoration: BoxDecoration(
            borderRadius: tabName.rad,
            border: Border.all(color: Color.fromARGB(25, 0, 0, 0)),
            color: tabName.isSelected ? Colors.white : Color(0xfff2f2f2)),
        child: Center(
          child: Text(tabName.data,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                  fontSize: 14)),
        ),
      ),
    );
  }
}

class ListItem {
  bool isSelected = false;
  String data;
  BorderRadius rad;

  ListItem(this.data, this.rad);
}

class PointsLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  PointsLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory PointsLineChart.withSampleData() {
    return PointsLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList,
        animate: animate,
        defaultRenderer: new charts.LineRendererConfig(
            includePoints: true, includeArea: true));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 5),
      new LinearSales(1, 25),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
