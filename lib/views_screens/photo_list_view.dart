import 'package:flutter/material.dart';
import 'dart:math';

class PhotoListView extends StatelessWidget {
  const PhotoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.all(4),
        crossAxisCount: 2,
        crossAxisSpacing: 10, // 縦
        mainAxisSpacing: 10, // 横
        childAspectRatio: 0.7, // 高さ
        shrinkWrap: true,
        children: List.generate(100, (index) {

          var rng = new Random();
          var imgNumber = rng.nextInt(3);
          var assetsImage = "assets/grid/m" + imgNumber.toString() + ".png";

          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  offset: new Offset(5, 5),
                  blurRadius: 10,
                ),
              ],
            ),
            child:Column(
                children: <Widget>[
                  Image.asset(assetsImage, fit: BoxFit.cover,),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: Text(
                      'Meeage $index',
                    ),
                  ),
                ]
            ),
          );
        },
        ),
      ),
    );
  }
}