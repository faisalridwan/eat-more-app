class ReportsContent {
  String id;
  String price;
  String date;
  bool status;

  ReportsContent(this.id, this.price, this.date, this.status);
  String getName() => this.id;
  String getPrice() => this.price;
  String getDate() => this.date;
  bool getStatus() => this.status;
}
