import 'package:flutter/material.dart';
import 'package:shopify/pages/home.dart';
import 'package:shopify/pages/landing_page.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        '/homepage': (context)=>Home()
      },
    );
  }
}
