import 'package:flutter/material.dart';
import 'package:shopify/components/shoeTile.dart';
import 'package:shopify/data/shoe_tile.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 253, 253),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          },
        ),
        elevation: 0,
      ),

      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset('images/nikelog.png', width: 400),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'H O M E',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 63, 63, 63),
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.shop),
                title: Text(
                  'C A R T',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 63, 63, 63),
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  'A B O U T',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 63, 63, 63),
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'S E T T I N G',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 63, 63, 63),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 13,
                  right: 8,
                  left: 8,
                  bottom: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Search.....'), Icon(Icons.search)],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
                left: 10,
                right: 10,
                bottom: 40,
              ),
              child: Text(
                'Anyone can have something to buy, but not everyone can buy \nthe best product',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Picks 🔥',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('See all', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  ShoeTile shoetile = ShoeTile(
                    description: 'cool shoes',
                    shoePath: 'images/adidas1.png',
                    name: 'Air Force',
                    price: '\$350',
                  );
                  return Shoetile(shoetile:shoetile);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
