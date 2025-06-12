import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNavbar extends StatelessWidget {
  final Function(int)? onTabChange;
  const MyButtonNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: (value) => onTabChange!(value),
      mainAxisAlignment: MainAxisAlignment.center,
      color: Colors.grey[500],
      activeColor: Colors.grey[700],
      tabActiveBorder: Border.all(color: Colors.white),
      tabBorderRadius: 12,
      tabs: const [
        GButton(
          icon: Icons.home,
          text: "Shop",
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: "Cart",
        ),
      ],
    );
  }
}
