import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset(
                  'lib/images/Logo.png',
                  height: 330,
                ),
              ),

              // title
              const Text(
                'Comfort & Colours At Your Foot',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 25),

              // sub title
              const Text(
                'Discover comfort, vibrant hues that dazzle the eye, and premium-quality sneakers at our store.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 15, 14, 14),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Images at the bottom
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'lib/images/bottom1.png',
                        height: 80,
                      ),
                      Image.asset(
                        'lib/images/bottom3.png',
                        height: 80,
                      ),
                      Image.asset(
                        'lib/images/bottom3.png',
                        height: 80,
                      ),
                      Image.asset(
                        'lib/images/bottom1.png',
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
