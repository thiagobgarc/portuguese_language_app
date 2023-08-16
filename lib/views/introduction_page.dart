import 'package:flutter/material.dart';
import 'package:language_app/views/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          // globe image
          Padding(
            padding: const EdgeInsets.only(
              left: 80.0,
              right: 80.0,
              bottom: 40.0,
              top: 160.0,
            ),
            child: Image.asset('lib/images/language_globe.png'),
          ),
          const SizedBox(height: 24.0),
          const Padding(
            padding: EdgeInsets.only(
              left: 80.0,
              right: 80.0,
            ),
            // time to learn
            child: Text(
              "Words in Portguese",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Spacer(),
          // button to home page
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.all(30.0),
              child: const Text('Get Started',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
