import 'package:flutter/material.dart';
import 'package:news/model/NewsResponse.dart';


class NewsInfo extends StatelessWidget {
  static const String routename = 'news-info';
  News news ;
  NewsInfo({ required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(news.urlToImage ?? ""),
          Text(news.author ?? "",
              style: TextStyle(color: Colors.grey, fontSize: 12)),
          Text(news.title ?? ""),
          SizedBox(
            height: 5,
          ),
          Text(news.publishedAt ?? "",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
              )),
        ],
      ),
    );
  }
}
