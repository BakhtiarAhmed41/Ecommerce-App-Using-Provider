
class Category{

  final String title;
  final String image;

  Category({
    required this.title,
    required this.image
  });
}


final List<Category> categories = [
  Category(title: "Shoes", image: "shoes.jfif"),
  Category(title: "Men Clothing", image: "men_cloths.jfif"),
  Category(title: "Women Clothing", image: "women_cloths.jfif"),
  Category(title: "Hats", image: "hats.jfif"),
  Category(title: "Jewelry", image: "jewelry.jfif"),
];