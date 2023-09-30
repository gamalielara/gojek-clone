import 'package:flutter/cupertino.dart';

import '../../../theme.dart';

class NewsCard extends StatelessWidget {
  final String thumbnailImage;
  final String title;
  final String desc;

  NewsCard(this.thumbnailImage, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: grey,
          width: 0.5,
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              "assets/images/${this.thumbnailImage}",
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: bold18,
                  textAlign: TextAlign.left,
                ),
                Text(
                  this.desc,
                  style: semibold,
                  textAlign: TextAlign.left,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
