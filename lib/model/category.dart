
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  static List<Category1> getCategories(context) {
    /*      technology */
    return [
      Category1(
          title:  AppLocalizations.of(context)!.sports ,
          id: 'sports',
          color: appTheme.RedColor,
          ImageUrl: 'assets/images/sports.png'),
      Category1(
          title: AppLocalizations.of(context)!.general,
          id: 'general',
          color: appTheme.blueColor,
          ImageUrl: 'assets/images/Politics.png'),
      Category1(
          title: AppLocalizations.of(context)!.health,
          id: 'health',
          color: appTheme.PinkColor,
          ImageUrl: 'assets/images/health.png'),
      Category1(
          title: AppLocalizations.of(context)!.business,
          id: 'business',
          color: appTheme.brownColor,
          ImageUrl: 'assets/images/bussines.png'),
      Category1(
          title: AppLocalizations.of(context)!.entertaunment,
          id: 'entertainment',
          color: appTheme.blueColor,
          ImageUrl: 'assets/images/environment.png'),
      Category1(
          title: AppLocalizations.of(context)!.science,
          id: 'science',
          color: appTheme.yellowColor,
          ImageUrl: 'assets/images/science.png'),
      Category1(
          title: AppLocalizations.of(context)!.technology,
          id: 'technology',
          color: appTheme.RedColor,
          ImageUrl: 'assets/images/Politics.png'),
    ];
  }
}
