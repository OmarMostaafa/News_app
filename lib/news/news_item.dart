import 'package:flutter/material.dart';
import 'package:news/home/News_Info.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/my_theme.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>NewsInfo(news: news,)
                  )
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network(news.urlToImage ?? "" , errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.co_present_sharp);
              },),
            ),
          ),
        ),
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
    );
  }
}
