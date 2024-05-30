import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class XDBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  XDBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: GNav(
          color: Colors.black,
          activeColor: Colors.black,
          tabActiveBorder:
              Border.all(color: const Color.fromARGB(255, 131, 168, 186)),
          tabBackgroundColor: const Color.fromARGB(255, 119, 155, 172),
          tabBorderRadius: 20,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.account_circle,
              text: 'Account',
            ),
          ]),
    );
  }
}
