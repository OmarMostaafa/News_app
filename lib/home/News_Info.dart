import 'package:flutter/material.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/web/web_view.dart';


class NewsInfo extends StatelessWidget {
  News news ;
  NewsInfo({ required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(news.urlToImage ?? ""),
          Text(news.author ?? "",
              style: const TextStyle(color: Colors.grey, fontSize: 12)),
          Text(news.title ?? ""),
         const  SizedBox(
            height: 5,
          ),
          Text(news.publishedAt ?? "",
              textAlign: TextAlign.end,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 11,
              )),
          const SizedBox(
            height: 70,
          ),
          Text(
              '${news.content}''${news.description}' ?? "",
            style:  const TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                    onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>WebViewScreen(news.url!)
                      )
                    );
                    },
                    child: const Text(
                        'View full article',
                      style:  TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
