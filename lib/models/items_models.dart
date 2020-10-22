class Items {
  String title;
  String ingredients;
  String price;
  String imgUrl;
  Items({this.title, this.ingredients, this.price, this.imgUrl});
}

Items pizza = Items(
    title: "Pizza",
    ingredients: "Mushroom & steak",
    price: "1.25",
    imgUrl: "images/pizza.png");

Items burger = Items(
    title: "Burger",
    ingredients: "1 fitll grilled",
    price: "6.50",
    imgUrl: "images/burger.png");
List<Items> itemList = [pizza, burger];
