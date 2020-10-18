class Items {
  String name;
  String price;
  String star;
  String top;
  String weight;
  String imageUrl;
  Items(
      {this.name, this.star, this.price, this.top, this.weight, this.imageUrl});
}

final Items pizzaFav = Items(
    name: "Primavera Pizza",
    star: "5.0",
    weight: "14",
    top: "top of the month",
    price: "5.99",
    imageUrl: "images/realpizza.png");

final Items pastaFav = Items(
    name: "Pasta Pesto",
    star: "4.7",
    weight: "28",
    top: "top of the week",
    price: "2.7",
    imageUrl: "images/realpizza1.png");
final Items cokeFav = Items(
    name: "Coca Cola",
    price: "3.5",
    star: "5.0",
    weight: "35",
    top: "top of the day",
    imageUrl: "images/realcoke.png");

List<Items> popularItems = [pizzaFav, pastaFav, cokeFav];
