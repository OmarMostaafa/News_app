import 'package:flutter/material.dart';
import 'package:news/home/home_screen.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/model/api_manager.dart';
import 'package:news/news/news_item.dart';

var newslist=[];

class NewsContainer extends StatefulWidget {
Source source ;
NewsContainer({required this.source});

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  @override
  Widget build(BuildContext context) {
    return searchController.text.isEmpty? FutureBuilder<NewsResponse>(future: ApiManager.getNewsBySourceID(widget.source.id??""),
      builder: (context, snapshot) {
      newslist=[];
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            )
            ,
          );
        }
        else if (snapshot.hasError) {
          return Column(
            children: [
              Text('Something Went Wrong'),
              ElevatedButton(onPressed: (){
                ApiManager.getNewsBySourceID(widget.source.id??"");
                setState(() {

                });
              }, child: Text('Please Try Again'))
            ],
          );
        }
        if(snapshot.data?.status != 'ok'){
          return Column(
            children: [
              Text(snapshot.data?.message??""),
              ElevatedButton(onPressed: (){
                ApiManager.getNewsBySourceID(widget.source.id??"");

              }, child: Text('Please Try Again'))
            ],
          );
        }
         newslist = snapshot.data?.articles ?? [];
        return  ListView.builder( itemBuilder: (context , index){
           return NewsItem(news: newslist[index]);

         },
          itemCount: newslist.length,);
      },):FutureBuilder<NewsResponse>(future: ApiManager.searchNews(searchController.text??""),
      builder: (context, snapshot) {
        newslist=[];
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            )
            ,
          );
        }
        else if (snapshot.hasError) {
          return Column(
            children: [
              Text('Something Went Wrong'),
              ElevatedButton(onPressed: (){
                ApiManager.getNewsBySourceID(widget.source.id??"");
                setState(() {

                });
              }, child: Text('Please Try Again'))
            ],
          );
        }
        if(snapshot.data?.status != 'ok'){
          return Column(
            children: [
              Text(snapshot.data?.message??""),
              ElevatedButton(onPressed: (){
                ApiManager.getNewsBySourceID(widget.source.id??"");

              }, child: Text('Please Try Again'))
            ],
          );
        }
         newslist = snapshot.data?.articles ?? [];
        return  ListView.builder( itemBuilder: (context , index){
          return NewsItem(news: newslist[index]);

        },
          itemCount: newslist.length,);
      },);
  }
}
