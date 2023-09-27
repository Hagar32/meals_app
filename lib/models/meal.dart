enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Meal{
  final String id;
  final List<String> categories;
  final String title;
  final String Url;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  Meal(this.id, this.categories, this.title, this.Url,  this.duration, this.complexity, this.affordability,);

}