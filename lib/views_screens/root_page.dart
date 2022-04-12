import 'package:flutter/material.dart';
import 'package:list_sample/view_models/bottom_navigation_model.dart';
import 'package:list_sample/views_screens/favorite_list_view.dart';
import 'package:provider/provider.dart';

class RootPage extends StatelessWidget {
  final List<Widget> _pageList = <Widget>[
    ListView(),
    const FavoriteListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavigationModel>(
      create: (_) => BottomNavigationModel(),
      child: Consumer<BottomNavigationModel>(
        builder: (context, model, child) {
          final tabItems = [
            const BottomNavigationBarItem(
              icon: Icon(Icons.view_stream_outlined),
              label: 'List',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.all_inbox),
              label: 'Favorite',
            ),
          ];

          return Scaffold(
            body: _pageList[model.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: model.currentIndex,
              onTap: (index) {
                model.currentIndex = index;
              },
              items: tabItems,
            ),
          );
        },
      ),
    );
  }
}