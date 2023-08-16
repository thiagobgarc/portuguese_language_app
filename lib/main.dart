import 'package:flutter/material.dart';
import 'package:language_app/models/word_model.dart';
import 'package:language_app/views/introduction_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WordModel(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
        ));
  }
}
