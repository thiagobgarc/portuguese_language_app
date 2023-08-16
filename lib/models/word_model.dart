import 'package:flutter/material.dart';

class WordModel extends ChangeNotifier {
  final List _wordsItems = [
    // English: Portuguese
    ['Bus', 'Ônibus', 'lib/images/bus.png', Colors.blue],
    ['Man', 'Homem', 'lib/images/man.png', Colors.red],
    ['Woman', 'Mulher', 'lib/images/woman.png', Colors.purple],
    ['Rain', 'Chuva', 'lib/images/rain.png', Colors.blue],
    ['Kid', 'Criança', 'lib/images/kid.png', Colors.green],
    ['Cat', 'Gato', 'lib/images/cat.png', Colors.orange],
    ['Pineapple', 'Abacaxi', 'lib/images/pineapple.png', Colors.pink],
    ['Pencil', 'Lapis', 'lib/images/pencil.png', Colors.brown],
    ['Book', 'Livro', 'lib/images/book.png', Colors.grey],
    ['Strawberry', 'Morango', 'lib/images/strawberry.png', Colors.yellow],
    ['Apple', 'Maçã', 'lib/images/apples.png', Colors.purple],
    ['Orange', 'Laranja', 'lib/images/orange.png', Colors.blue],
  ];

  // get words
  List get wordsList => _wordsItems;
}
