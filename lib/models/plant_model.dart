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
