import 'package:flutter/cupertino.dart';
import '../widgets/app_bar.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: appBar),
      child: Center(
        child: Text('Third Screen'),
      ),
    );
  }
}
