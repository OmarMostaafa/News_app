import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/category/category_item.dart';
import 'package:news/home/News_Info.dart';
import 'package:news/model/category.dart';
import 'package:news/my_theme.dart';

class CategoryFragments extends StatelessWidget {
  var categorieslist = Category1.getCategories();
  Function OnCategoryClick;
  CategoryFragments({required this.OnCategoryClick});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell( onTap: (){
                Navigator.pushNamed(context, NewsInfo.routename);
              },
                child: Text(
                  'Pick your category \n of interest',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.start,
                ),
              ),
            ),

            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 18,
                      crossAxisSpacing: 18),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          OnCategoryClick(categorieslist[index]);
                        },
                        child: CategoryItem(
                            category: categorieslist[index], index: index));
                  },
                  itemCount: categorieslist.length),
            )
          ],
        ));
  }
}