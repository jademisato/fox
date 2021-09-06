import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget topSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Good afternoon. You\'ve created 1 folio in total.',
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            child: Text('+ NEW FOLIO'),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              primary: Colors.red[500],
              backgroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(30, 25, 30, 25),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: whiteColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo.png',
                fit: BoxFit.contain,
                height: 32,
              ),
            ],
          ),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/home_backdround_img.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: topSection,
        ),
      ),
    );
  }
}

const MaterialColor whiteColor = const MaterialColor(
  0xFFFCFAF8,
  const <int, Color>{
    50: const Color(0xFFFCFAF8),
    100: const Color(0xFFFCFAF8),
    200: const Color(0xFFFCFAF8),
    300: const Color(0xFFFCFAF8),
    400: const Color(0xFFFCFAF8),
    500: const Color(0xFFFCFAF8),
    600: const Color(0xFFFCFAF8),
    700: const Color(0xFFFCFAF8),
    800: const Color(0xFFFCFAF8),
    900: const Color(0xFFFCFAF8),
  },
);
