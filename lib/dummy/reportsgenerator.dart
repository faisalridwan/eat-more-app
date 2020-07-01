import 'reportscontent.dart';

class ReportsGenerator {
  static var reportsList = [
    ReportsContent("ID 10201212122", "170.000","17 Mar, 2020", true),
    ReportsContent("ID 10204552122", "170.430","13 Mar, 2021", false),
    ReportsContent("ID 34344212122", "145.340","17 Jun, 2020", true),
    ReportsContent("ID 10201654122", "170.000","17 Mar, 2020", false),
    ReportsContent("ID 10201342122", "170.040","17 Mar, 2020", true),
    ReportsContent("ID 10201212122", "170.000","17 Mar, 2020", true),
    ReportsContent("ID 10201234122", "170.000","17 Mar, 2020", true),
    ReportsContent("ID 10201212122", "170.000","17 Mar, 2020", false),
    ReportsContent("ID 1020156122", "170.000","17 Mar, 2020", true),
    ReportsContent("ID 1020762122", "170.000","17 Mar, 2020", true),
    ReportsContent("ID 10201212122", "170.000","17 Mar, 2020", true),
  ];

  static ReportsContent getReportsContent(int position) =>
      reportsList[position];
  static int reportsListLength = reportsList.length;
}
