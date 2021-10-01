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
          Container(
            margin: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.white,
            ),
            child: Row(
              children: [
                IconButton(
                  highlightColor: Colors.blue,
                  hoverColor: Colors.green,
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_rounded,
                  color: Colors.red,
                  size: 32.0,
                  semanticLabel: 'Open User Info panel',
                ),
              ),
              Stack(
                children: <Widget>[
                  Ink(
                    decoration: const ShapeDecoration(
                      // color: Colors.grey,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fingerprint_outlined,
                        color: Colors.red,
                        size: 32.0,
                        semanticLabel: 'Switch to Touch Mode',
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Image.asset(
                    'images/logo.png',
                    fit: BoxFit.contain,
                    height: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage('images/home_backdround_img.webp'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container( // Black shadow bottpmLeft to topRight
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.0, 1.0),
                  end: Alignment(0.0, 0.0),
                  stops: [
                    0.1,
                    0.9,
                  ],
                  colors: <Color>[
                    Colors.black,
                    Colors.black.withOpacity(0.0),
                  ],
                ),
              ),
            ),
            Container( // Black shadow left to right
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.0, 0.0),
                  end: Alignment(0.0, 0.0),
                  stops: [
                    0.1,
                    0.9,
                  ],
                  colors: <Color>[
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.0),
                  ],
                ),
              ),
            ),
            // Container( // TODO: Add a black shadow bottom to top
            //   constraints: BoxConstraints.expand(),
            //   decoration: BoxDecoration(
            //     // fit: BoxFit.fill,
            //     gradient: LinearGradient(
            //       begin: Alignment(0.0, 0.0),
            //       end: Alignment(0.0, -1.0),
            //       stops: [
            //         0.1,
            //         0.9,
            //       ],
            //       colors: <Color>[
            //         // Colors.black,
            //         // Colors.indigo[800],
            //         Color(0xff000000).withOpacity(0.8),
            //         // Colors.white,
            //         Colors.white.withOpacity(0.0),
            //       ],
            //     ),         
            //   ),
            // )
            Column(
              children: [
                topSection,
                const InputForm(),
                bottomSection,
              ],
            ),
          ],
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
              constraints: BoxConstraints(maxWidth: 500.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 1.0),
                  hintText: 'Add Title',
                  filled: true,
                  hoverColor: Colors.red.withOpacity(0.1),
                ),
                style: TextStyle(fontFamily: 'DMSerifText', fontSize: 40.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 20.0, maxHeight: 20.0, maxWidth: 320.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.only(left: 1.0),
                  hintText: 'Add Description',
                  filled: true,
                  hoverColor: Colors.red.withOpacity(0.1),
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
