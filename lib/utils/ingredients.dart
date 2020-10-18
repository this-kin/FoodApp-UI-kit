class Ingred {
  String imgUrl;
  Ingred({this.imgUrl});
}

final Ingred firstIngred = Ingred(imgUrl: "images/1.png");

final Ingred secondIngred = Ingred(imgUrl: "images/2.png");
final Ingred thirdIngred = Ingred(imgUrl: "images/3.png");
final Ingred fourIngred = Ingred(imgUrl: "images/4.png");

List<Ingred> ingredList = [firstIngred, secondIngred, thirdIngred, fourIngred];
