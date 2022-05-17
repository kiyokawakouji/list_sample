import 'package:flutter/material.dart';
import 'package:list_sample/views_screens/favorite_list_view.dart';
import 'package:list_sample/views_screens/photo_list_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectIndex = 0;

  final _pages = <Widget>[
    const PhotoListView(),
    const FavoriteListView(),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hogehoge'),
      ),
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: _selectIndex,
        onTap: _onTapItem,
      ),
    );
  }
}
