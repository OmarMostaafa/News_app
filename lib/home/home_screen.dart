import 'package:flutter/material.dart';
import 'package:news/category/category_details.dart';
import 'package:news/category/category_fragments.dart';
import 'package:news/home/home_drawer.dart';
import 'package:news/model/api_manager.dart';
import 'package:news/model/category.dart';
import 'package:news/my_theme.dart';
import 'package:news/news/news_container.dart';
import 'package:news/settings/settings_tab.dart';

var searchController = TextEditingController();

class HomeScreen extends StatefulWidget {
  static const String routename = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: HomeDrawer(OnDrawerItemClick: onDrawerItemClick),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: _showSearch? TextField(
            controller: searchController,
            onChanged: (value){
              setState(() {
                newslist=[];
              });
              value=searchController.text;
              ApiManager.searchNews(searchController.text);
            },
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                hintText: 'Search Courses',
                hintStyle: TextStyle(color: Colors.white)),
          ):const Text(
            "Home",
            style: TextStyle(
              fontSize: 16.0, /*fontWeight: FontWeight.bold*/
            ),
          ),
          centerTitle: true,

          //search icon
          actions: [
            IconButton(
              icon:  Icon(_showSearch==false?Icons.search:Icons.close),
              onPressed: () {
                searchController.clear();
                setState(() {
                  _showSearch=!_showSearch;
                });
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: appTheme.whiteColor,
              child: Image.asset('assets/images/background.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover),
            ),
            selectedDrawerItem == HomeDrawer.settings
                ? SettingTab()
                : selectedCategory == null
                    ? CategoryFragments(OnCategoryClick: OnCategoryClick)
                    : CategoryDetails(category: selectedCategory!),
          ],
        ));
  }

  Category1? selectedCategory;

  void OnCategoryClick(Category1 newSelectedCategory) {
    selectedCategory = newSelectedCategory;
    setState(() {});
  }

  int selectedDrawerItem = HomeDrawer.categories;
  void onDrawerItemClick(int newSelectedDrawedItem) {
    selectedDrawerItem = newSelectedDrawedItem;
    selectedCategory = null;
    Navigator.pop(context);
    setState(() {});
  }
}
