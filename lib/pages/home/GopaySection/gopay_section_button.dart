import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/theme.dart';

class GopaySectionButton extends StatelessWidget {
  final String title;
  final String icon;

  GopaySectionButton({required this.title, required this.icon});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: Column(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: light),
            child: SvgPicture.asset(
              "assets/icons/${this.icon}.svg",
              color: darkBlue,
            ),
          ),
          SizedBox(height: 7),
          Text(
            this.title,
            style: semibold.copyWith(color: light, fontSize: 14),
          )
        ],
      ),
    );
  }
}
