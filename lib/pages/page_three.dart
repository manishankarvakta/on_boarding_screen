import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageThree extends StatefulWidget {
  PageThree({Key key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 3,
          child: SvgPicture.asset('images/deliveries.svg'),
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
                  'Deliveries',
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
                  'You will get your deliveries within next 3 hours, as well you place the order',
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
