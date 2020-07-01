class FoodContent {
  String name;
  String price;

  FoodContent(this.name, this.price);
  String getSubject() => this.name;
  String getSender() => this.price;
}