import 'package:flutter/material.dart';
import 'package:shoppingapp/cart_page.dart';
import 'package:shoppingapp/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = [
    ProductList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        //when clicking back on homepage , the scroll position doesnt change.
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          setState(
            () {
              currentPage = value;
            },
          );
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.shopping_bag),
          ),
        ],
      ),
    );
  }
}
