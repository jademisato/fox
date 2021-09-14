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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.crop_original,
              color: Colors.red,
              size: 30.0,
              semanticLabel: 'Grid View',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.list_alt,
              color: Colors.red,
              size: 30.0,
              semanticLabel: 'List View',
            ),
          ),
        ],
      ),
    );

    Widget bottomSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                backgroundColor: Colors.red,
              ),
              icon: Icon(
                Icons.chevron_left_outlined,
                color: Colors.white,
              ),
              label: Text(
                "VIEW FOLIO",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.white,
              size: 30.0,
              semanticLabel: 'Copy Share Link',
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
          child: Column(
            children: [
              topSection,
              const InputForm(),
              bottomSection,
            ],
          ),
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 64.0, maxWidth: 500.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add Title',
                ),
                style: TextStyle(fontSize: 40.0, height: 1.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 40.0, maxWidth: 320.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Add Description',
                ),
              ),
            ),
          ),
        ],
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
