import 'chekincontent.dart';

class DataGenerator {
  static var dataList = [
    DataContent("Glen", "22", "17:05"),
    DataContent("Martinus", "20", "16:49"),
    DataContent("Raymond", "01", "16:30"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
    DataContent("Marion", "19", "16:27"),
  ];

  static DataContent getDataContent(int position) => dataList[position];
  static int dataListLength = dataList.length;
}
