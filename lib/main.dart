import 'package:flutter/material.dart';
import 'FavoriteListView.dart';
import 'FooterView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MainPage(title: 'Flutter List Sample App'),
      routes: <String, WidgetBuilder> {
        '/home':(BuildContext context) => ListView(),
        '/favoritelistview':(BuildContext context) => const FavoriteListView()
      },
      home: Scaffold(
        // appBar: Header(),
        body: ListView(),
        bottomNavigationBar: const Footer(),
      ),
    );
  }
}