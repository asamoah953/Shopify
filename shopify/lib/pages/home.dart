import 'package:flutter/material.dart';
import 'package:shopify/pages/cart.dart';
import 'package:shopify/pages/shop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  // ignore: annotate_overrides
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedpage = 0;

   List pages = [
     Shop(),
     Cart(),
  ];

  void switchpages(int index) {
    setState(() {
      selectedpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 253, 253),
        elevation: 0,
      ),

      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('images/nikelog.png', width: 400),
            ),
          ],
        ),
      ),

      body: pages[selectedpage],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedpage, // 👈 important
        onTap: switchpages,         // 👈 correct usage
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}