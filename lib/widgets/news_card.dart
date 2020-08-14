import 'package:flutter/material.dart';
import '../style/style_config.dart';

class NewsCard extends StatelessWidget {
  //final News news
  final news;
  NewsCard(this.news);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
      padding: EdgeInsets.all(8),
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image(
                  image: NetworkImage(news['imgLink']),
                  height: 160,
                  width: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5, bottom: 0),
                  height: 50,
                  child: Text(
                    news['title'],
                    style: newsCardTitleFont,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45,
                  child: Text(
                    news['text'],
                    style: newsCardTextFont,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    softWrap: true,
                  ),
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          news['author'],
                          style: newsCardAuthorFont,
                        ),
                        Text(
                          news['date'],
                          style: newsCardDateFont,
                        ),
                      ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
