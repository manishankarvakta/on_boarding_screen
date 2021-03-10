import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 2,
          child: SvgPicture.asset('images/On_the_way.svg'),
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
                  'Delivery On the Way',
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
                  'As soon as you place the order the delivery will on the way to you.',
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
