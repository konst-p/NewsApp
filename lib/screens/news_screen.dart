import 'package:flutter/cupertino.dart';
import '../widgets/namaz_row.dart';
import '../widgets/news_list.dart';
import '../widgets/app_bar.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.only(bottom: 0), middle: appBar),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            namazRow,
            Expanded(
              child: NewsList(),
            )
          ],
        ),
      ),
      // Expanded(child: NewsList()),
    );
  }
}
