import 'package:flutter/material.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/model/api_manager.dart';
import 'package:news/model/category.dart';
import 'package:news/tabs/tab_container.dart';

class CategoryDetails extends StatefulWidget {
  static const String routename = 'category';
  Category1 category ;
  CategoryDetails({required this.category});
  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
      future: ApiManager.getSources(widget.category.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          );
        } else if (snapshot.hasError) {
          return Column(
            children: [
              Text('Something Went Wrong'),
              ElevatedButton(
                  onPressed: () {
                    ApiManager.getSources(widget.category.id);
                    setState(() {});
                  },
                  child: Text('Please Try Again'))
            ],
          );
        }
        if (snapshot.data?.status != 'ok') {
          return Column(
            children: [
              Text(snapshot.data?.message ?? ""),
              ElevatedButton(
                  onPressed: () {
                    ApiManager.getSources(widget.category.id);
                    setState(() {});
                  },
                  child: Text('Please Try Again'))
            ],
          );
        }
        var sourcelist = snapshot.data?.sources ?? [];

        return TabContainer(sourcelist: sourcelist);
      },
    );
  }
}
