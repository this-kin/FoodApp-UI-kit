class Item {
  String name;
  String imageUrl;
  Item({this.name, this.imageUrl});
}

final Item pizzaItem = Item(name: "Pizza", imageUrl: "images/fakepizza.png");

final Item seaFood = Item(name: "Seafood", imageUrl: "images/shrimp.png");
final Item pastRy = Item(name: "Pasta", imageUrl: "images/fakepasta.png");
final Item softDrink =
    Item(name: "Soft Drinks", imageUrl: "images/fakecoke.png");

List<Item> catergory = [pizzaItem, seaFood, softDrink, pastRy];
