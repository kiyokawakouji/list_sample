import 'package:flutter/material.dart';

class ListDetailView extends StatelessWidget {
  const ListDetailView({Key? key, required this.index}) : super(key: key);
  // TODO(k): 画面遷移時にテキストが表示される問題を解消する
  final String index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Center(
            child: Hero(
              tag: index,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
                // TODO(k): 受け取った画像を表示する
                child: Text(index, textAlign: TextAlign.center),
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
