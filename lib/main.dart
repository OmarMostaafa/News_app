import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/category/category_details.dart';
import 'package:news/home/News_Info.dart';
import 'package:news/home/home_screen.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/my_theme.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routename : (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.routename ,
      theme: appTheme().lightTheme ,

    );
  }

}