import 'package:flutter/material.dart';
import 'package:shopify/data/shoe_tile.dart';

// ignore: must_be_immutable
class Shoetile extends StatelessWidget {
  ShoeTile shoetile;
  Shoetile({super.key, required this.shoetile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(
                width: 300,
                shoetile.shoePath),
            ),

            Text(shoetile.description),

            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 8),
              child: Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [Text(shoetile.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ), Text(shoetile.price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    )]),
              
                    Container(
                      decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(12))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.add),
                      )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
