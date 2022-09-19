import 'package:baratie_resto_app/model/drink.dart';
import 'package:baratie_resto_app/model/food.dart';

class Menu {
  final List<Food> foods;
  final List<Drink> drinks;

  Menu({
    required this.foods,
    required this.drinks,
  });

  factory Menu.fromJson(Map<String, dynamic> menu) => Menu(
        foods: menu['foods'] == null
            ? []
            : List<Food>.fromJson(
                menu['foods'],
              ),
        drinks: menu['drinks'] == null
            ? Drink
            : Drink.fromJson(
                menu['drinks'],
              ),
      );
}
