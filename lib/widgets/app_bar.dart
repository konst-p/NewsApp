import 'package:flutter/cupertino.dart';
import '../style/style_config.dart';

class AppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo.png'),
          ),
          Text(
            'UMMA PAY',
            style: appTitleFont,
          ),
        ],
      ),
    );
  }
}

AppBar appBar = AppBar();
