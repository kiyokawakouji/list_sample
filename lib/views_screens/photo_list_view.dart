import 'package:flutter/material.dart';

import 'list_detail.dart';

class PhotoListView extends StatelessWidget {
  const PhotoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeDevice = MediaQuery.of(context).size;
    final itemHeight = (sizeDevice.height - kToolbarHeight - 24) / 3;
    final itemWidth = sizeDevice.width / 3;

    final images = <String>[
      'https://cdn.pixabay.com/photo/2022/05/10/11/12/tree-7186835_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/05/08/18/13/cat-7182671_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/05/16/18/17/sheep-7200918_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/05/13/16/22/lake-7194103_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/04/15/18/32/cat-7134998_1280.jpg',
      'https://cdn.pixabay.com/photo/2019/08/12/10/03/tourist-4400871_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/05/11/23/51/river-7190415_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/05/05/20/01/australian-shepherd-7176981_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/03/03/11/19/nature-7045133_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/05/14/06/12/leaves-7194981_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/05/14/12/38/oriental-garden-lizard-7195594_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/03/16/18/37/flowers-7073059_1280.jpg',
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: images.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: itemWidth / itemHeight * 1.5,
          ),
          itemBuilder: (context, index) {
            // TODO(k): Container → Heroに変える
            return GestureDetector(
              child: Container(
                constraints: const BoxConstraints.expand(),
                color: Colors.red,
                height: itemHeight,
                width: itemWidth * 2,
                child: Hero(
                  tag: '$index',
                  child: Column(children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        images[index],
                        // height: itemHeight,
                        // width: itemWidth * 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // TODO(k): 三点リーダーを表示させる
                    Text('$index'),
                  ]),
                ),
              ),
              onTap: () {
                Navigator.push<void>(
                  context,
                  // TODO(k): 画像のurlを渡す
                  MaterialPageRoute(builder: (context) => ListDetailView(index: '$index')),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
