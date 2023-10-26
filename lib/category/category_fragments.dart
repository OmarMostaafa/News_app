
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/category/category_item.dart';
import 'package:news/home/News_Info.dart';
import 'package:news/model/category.dart';
import 'package:news/my_theme.dart';

class CategoryFragments extends StatefulWidget {
  Function OnCategoryClick;
  CategoryFragments({required this.OnCategoryClick});

  @override
  State<CategoryFragments> createState() => _CategoryFragmentsState();
}

class _CategoryFragmentsState extends State<CategoryFragments> {


  @override
  Widget build(BuildContext context) {
    var categorieslist = Category1.getCategories(context);
    return Container(
        padding: EdgeInsets.all(12),
        child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Pick your category \n of interest',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.start,
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
                          widget.OnCategoryClick(categorieslist[index]);
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
