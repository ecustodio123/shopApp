import 'package:flutter/material.dart';
import 'package:shop_app/screens/screens.dart';

class BottomNavShop extends StatelessWidget {
  const BottomNavShop({
    Key? key,
    required int selectedIndex,
  })  : selectedIndex = selectedIndex,
        super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0XFFF8F8F8),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: InkWell(
            child: Icon(Icons.home),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
              child: Icon(Icons.apps_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeTwoScreen()),
                );
              }),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
              child: Icon(Icons.shopping_cart_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              }),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
              child: Icon(Icons.person_add_alt_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              }),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0XFFEA001B),
      unselectedItemColor: const Color(0XFF8B8B94),
    );
  }
}
