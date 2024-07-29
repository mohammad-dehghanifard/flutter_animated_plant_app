class PlantModel {
  final String title, imagePath, size, crust, delivery;
  final int price;
  final List<String> relatedImagePath;

  PlantModel({
    required this.title,
    required this.size,
    required this.imagePath,
    required this.crust,
    required this.delivery,
    required this.price,
    required this.relatedImagePath,
  });
}

final List<PlantModel> plants = [
  PlantModel(title: "گیاه گلدانی", size: "گلدان متوسط", imagePath: "assets/images/plant1.png", crust: "براق", delivery: "2 روز کاری", price: 150000, relatedImagePath: [
    "assets/images/plant1.png","assets/images/plant2.png","assets/images/plant4.png"
  ]),
  PlantModel(title: "گل های گلدانی", size: "گلدان کوچک", imagePath: "assets/images/plant2.png", crust: "معمولی", delivery: "6 ساعت", price: 80000, relatedImagePath: [
    "assets/images/plant1.png","assets/images/plant2.png","assets/images/plant4.png"
  ]),
];
