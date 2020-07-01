class DataContent {
  String name;
  String table;
  String time;


  DataContent(this.name, this.table, this.time);
  String getSubject() => this.name;
  String getSender() => this.table;
  String getTime() => this.time;

}