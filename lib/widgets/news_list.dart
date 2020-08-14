import 'package:flutter/cupertino.dart';
import '../screens/news_details_screen.dart';
import '../bloc/news_bloc.dart';
import 'news_card.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: newsBLoc.streamNews(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: const Text("Loading..."));
          var newsList = snapshot.data.documents;
          return ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: NewsCard(newsList[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) =>
                            NewsDetailsScreen(news: newsList[index]),
                      ),
                    );
                  },
                );
              });
        });
  }
}
