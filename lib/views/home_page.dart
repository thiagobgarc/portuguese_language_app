import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:language_app/models/word_model.dart';
// import 'package:language_app/views/introduction_page.dart';
import 'package:language_app/widgets/word_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 300.0,
                bottom: 50.0,
              ),
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('lib/images/language_globe.png'),
              ),
            ),
            // welcome
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 10.0,
              ),
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            // click on the items to learn
            const Text(
              'Scroll through to learn a new word',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: Consumer<WordModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.wordsList.length,
                    padding: const EdgeInsets.all(12.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.4,
                    ),
                    itemBuilder: (context, index) {
                      return WordItemTile(
                        wordEnglish: value.wordsList[index][0],
                        wordPortuguese: value.wordsList[index][1],
                        image: value.wordsList[index][2],
                        color: value.wordsList[index][3],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
