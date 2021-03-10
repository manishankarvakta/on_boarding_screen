import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 3,
          child: SvgPicture.asset('images/online_groceries.svg'),
        ),
        Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Shop Online',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Search our Shop, slecte what you choose. and shop online',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
