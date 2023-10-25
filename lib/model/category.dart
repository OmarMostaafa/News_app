import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';

class Category1 {
  String id;
  String ImageUrl;
  Color color;
  String title;
  Category1(
      {required this.title,
      required this.id,
      required this.color,
      required this.ImageUrl});
  static List<Category1> getCategories() {
    /*      technology */
    return [
      Category1(
          title: 'Sports',
          id: 'sports',
          color: appTheme.RedColor,
          ImageUrl: 'assets/images/sports.png'),
      Category1(
          title: 'General',
          id: 'general',
          color: appTheme.blueColor,
          ImageUrl: 'assets/images/Politics.png'),
      Category1(
          title: 'Health',
          id: 'health',
          color: appTheme.PinkColor,
          ImageUrl: 'assets/images/health.png'),
      Category1(
          title: 'Business',
          id: 'business',
          color: appTheme.brownColor,
          ImageUrl: 'assets/images/bussines.png'),
      Category1(
          title: 'Entertainment',
          id: 'entertainment',
          color: appTheme.blueColor,
          ImageUrl: 'assets/images/environment.png'),
      Category1(
          title: 'Science',
          id: 'science',
          color: appTheme.yellowColor,
          ImageUrl: 'assets/images/science.png'),
      Category1(
          title: 'Technology',
          id: 'technology',
          color: appTheme.RedColor,
          ImageUrl: 'assets/images/Politics.png'),
    ];
  }
}
