import 'package:flutter/material.dart';

class WordItemTile extends StatelessWidget {
  final String wordEnglish;
  final String wordPortuguese;
  final String image;
  final color;
  void Function()? onPressed;

  WordItemTile({
    super.key,
    required this.wordEnglish,
    required this.wordPortuguese,
    required this.image,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              image,
              height: 65.0,
            ),
            // word
            Text(
              wordEnglish,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            // portuguese page + button
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                wordPortuguese,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
