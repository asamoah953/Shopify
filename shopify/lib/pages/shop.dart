import 'package:flutter/material.dart';
import 'package:shopify/components/shoeTile.dart';
import 'package:shopify/data/shoe_tile.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  description: 'One of the nest shoes you can have here',
                  shoePath: 'images/adidas1.png',
                  name: 'Air Force',
                  price: '\$350',
                );
                return Shoetile(shoetile: shoetile);
              },
            ),
          ),
        ],
      ),
    );
  }
}
