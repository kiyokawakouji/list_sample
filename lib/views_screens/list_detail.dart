import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListDetailView extends StatelessWidget {
  const ListDetailView({Key? key, required this.index, required this.images})
      : super(key: key);
  final int index;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 280,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180),
                    color: Colors.white.withOpacity(.5),
                  ),
                ),
              ),
              SizedBox(
                child: Hero(
                  tag: index,
                  // TODO(k): 受け取った画像を表示する
                  child: CachedNetworkImage(
                    imageUrl: 'https://picsum.photos/250?image=9',
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    height: 400,
                    width: 400,
                  ),
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.pop<void>(context);
          },
        ),
      ),
    );
  }
}
