import 'package:flutter/cupertino.dart';
import '../widgets/namaz_row.dart';
import '../widgets/app_bar.dart';
import '../style/style_config.dart';

class NewsDetailsScreen extends StatelessWidget {
  final news;
  NewsDetailsScreen({Key key, @required this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: true, middle: appBar),
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                namazRow,
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            Center(
                              child: Text(news['title'],
                                  style: newsDetailsTitleFont),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: NetworkImage(news['imgLink']),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Center(
                                child: Text('Автор: ' + news['author'],
                                    style: newsDetailsAuthorFont),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(news['text'])
                          ],
                        );
                      }),
                ),
              ]),
        ),
      ),
    );
  }
}
