import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: "Black Coffee",
      price: "4.10",
      imagePath: "lib/images/black.png",
    ),
    Coffee(
      name: "Espresso",
      price: "3.50",
      imagePath: "lib/images/espresso.png",
    ),
    Coffee(
      name: "Latte",
      price: "4.40",
      imagePath: "lib/images/latte.png",
    ),
    Coffee(
      name: "Iced Coffee",
      price: "4.10",
      imagePath: "lib/images/iced_coffee.png",
    ),
  ];

  final List<Coffee> _userCart = [];
  List<Coffee> get userCart => _userCart;
  List<Coffee> get coffeeShop => _shop;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
