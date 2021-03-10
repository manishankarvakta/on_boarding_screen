import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'pages/page_one.dart';
import 'pages/page_three.dart';
import 'pages/page_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'On Boarding Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex;
  int pageLength;

  @override
  void initState() {
    currentPageIndex = 0;
    pageLength = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20, top: 20),
            child: Text(
              'Skip',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            PageView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
              onPageChanged: (value) {
                setState(() {
                  currentPageIndex = value;
                });
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new DotsIndicator(
                    dotsCount: pageLength,
                    position: currentPageIndex.toDouble(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
