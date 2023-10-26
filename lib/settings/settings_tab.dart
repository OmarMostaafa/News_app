import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news/settings/language_bottom_sheet.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Language',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),

            ),
          ),
          SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent, // Set the container background color to transparent
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Add padding to the container
                  decoration: BoxDecoration(
                    color: Colors.blueAccent, // Set the background color for the text and arrow container
                    borderRadius: BorderRadius.circular(20), // Optional: Add border radius
                  ),
                  child: Row(
                    children: [
                      InkWell(onTap: (){
                      },child: Text('English', style: TextStyle(fontSize: 18, color: Colors.white))), // Set the text color
                      SizedBox(width: 12),
                      Icon(Icons.arrow_downward, color: Colors.white), // Set the icon color
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

