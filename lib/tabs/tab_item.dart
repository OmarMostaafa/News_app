import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/my_theme.dart';

class TabItem extends StatelessWidget {
  Source source;
  bool isSelected;
  TabItem({required this.isSelected, required this.source});
  @override
  Widget build(BuildContext context) {
    return Container( padding: EdgeInsets.all(9),
      margin: EdgeInsets.only(top:12),
      decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Theme.of(context).primaryColor, width: 3)),
      child: Text(
        source.name ?? "",
        style: TextStyle(
            color: isSelected
                ? appTheme.whiteColor
                : Theme.of(context).primaryColor),
      ),
    );
  }
}
