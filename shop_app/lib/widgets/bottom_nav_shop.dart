import 'package:flutter/material.dart';

class BottomNavShop extends StatelessWidget {
  const BottomNavShop({
    Key? key,
    required int selectedIndex,
  }) : selectedIndex = selectedIndex, super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0XFFF8F8F8),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add_alt_outlined),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0XFFEA001B),
      unselectedItemColor: const Color(0XFF8B8B94),
    );
  }
}