import 'package:flutter/material.dart';
import 'package:news/model/category.dart';
import 'package:news/my_theme.dart';
class CategoryItem extends StatelessWidget {
Category1 category ;
int index ;
CategoryItem({required this.category , required this.index});
  @override
  Widget build(BuildContext context) {
return Container(
  decoration: BoxDecoration(
    color:  category.color,
    borderRadius: BorderRadius.only(
      bottomLeft:  Radius.circular(index % 2 ==0 ? 20 :0,),
      bottomRight:Radius.circular(index % 2 !=0 ? 20 :0,) ,
      topLeft:   Radius.circular(20),
      topRight: Radius.circular(20),
    )
  ),
  child: Column(
    children: [
      Image.asset(category.ImageUrl),
      Text(category.title,
      style: Theme.of(context).textTheme.titleLarge,)
    ],
  ),
);
  }
}
