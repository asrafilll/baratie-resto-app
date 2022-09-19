class Food {
  final List<String> name;

  Food({
    required this.name,
  });

  factory Food.fromJson(Map<String, dynamic> food) => Food(
        name: food['name'] == null ? [] : List<String>.from(food['name']),
      );
}
