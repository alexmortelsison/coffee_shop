import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Center(child: Text("Added to Cart")),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Column(
          children: [
            const Text(
              "How do you like your coffee?",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: value.coffeeShop.length,
                itemBuilder: (context, index) {
                  Coffee eachCoffee = value.coffeeShop[index];
                  return CoffeeTile(
                    coffee: eachCoffee,
                    icon: const Icon(Icons.add),
                    onPressed: () => addToCart(eachCoffee),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
