class Drink {
  final List<String> name;

  Drink({
    required this.name,
  });

  factory Drink.fromJson(Map<String, dynamic> drink) => Drink(
        name: drink['name'] == null ? [] : List<String>.from(drink['name']),
      );
}
