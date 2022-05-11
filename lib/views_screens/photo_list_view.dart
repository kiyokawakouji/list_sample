import 'package:flutter/material.dart';

class PhotoListView extends StatelessWidget {
  const PhotoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeDevice = MediaQuery.of(context).size;
    final itemHeight = (sizeDevice.height - kToolbarHeight - 24) / 4;
    final itemWidth = sizeDevice.width / 3;

    final images = <String>[
      'assets/images/img1.png',
      'assets/images/img2.png',
      'assets/images/img3.png',
      'assets/images/img4.png',
      'assets/images/img1.png',
      'assets/images/img2.png',
      'assets/images/img3.png',
      'assets/images/img4.png',
      'assets/images/img1.png',
      'assets/images/img2.png',
      'assets/images/img3.png',
      'assets/images/img4.png',
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: itemWidth / itemHeight,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Image.asset(images[index], fit: BoxFit.cover),
                    Text('$index'),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
