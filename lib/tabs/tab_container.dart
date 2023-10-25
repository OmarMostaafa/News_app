import 'package:flutter/material.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/news/news_container.dart';
import 'package:news/tabs/tab_item.dart';

class TabContainer extends StatefulWidget {
  List<Source> sourcelist;

  TabContainer({required this.sourcelist});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourcelist.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              isScrollable: true,
              indicatorColor: Colors.transparent,
              tabs: widget.sourcelist
                  .map((source) => TabItem(
                      isSelected:
                          selectedIndex == widget.sourcelist.indexOf(source),
                      source: source))
                  .toList(),
            ),
            Expanded(child: NewsContainer(source: widget.sourcelist[selectedIndex]))
          ],
        ));
  }
}
