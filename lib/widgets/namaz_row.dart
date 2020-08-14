import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../style/style_config.dart';

class NamazRow extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Время намаза', style: namazTextFont),
          SizedBox(width: 15.0),
          Text('5:24', style: namazTextFont),
          Text('7:1', style: namazTextFont),
          Text('12:43', style: namazTextFont),
          Container(
            alignment: Alignment.center,
            width: 40,
            height: 16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.green[900]),
            child: Text('15:29',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                )),
          ),
          Text('18:11', style: namazTextFont),
          Text('19:53', style: namazTextFont)
        ],
      ),
    );
  }
}

NamazRow namazRow = NamazRow();
