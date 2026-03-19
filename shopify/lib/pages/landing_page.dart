import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset('images/nikelog.png', height: 200),

                Text('Just Do It', style: TextStyle(fontSize: 30)),
                Text(
                  'Some people have it easy, some wants the hard way.',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 82),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Welcom to Shopify',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 12, 128, 224),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Shop Now!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
