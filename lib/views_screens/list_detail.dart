import 'package:flutter/material.dart';

class ListDetailView extends StatelessWidget {
  const ListDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'boxHero',
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: const Text('詳細画面', textAlign: TextAlign.center),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop<void>(context);
          },
        ),
      ),
    );
  }
}
