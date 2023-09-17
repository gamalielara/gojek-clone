import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/theme.dart';

class MenuIcon extends StatelessWidget {
  final String name;
  final String icon;
  Color? color;

  MenuIcon({required this.name, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: this.color ?? primaryGreen,
              ),
              child: SvgPicture.asset(
                "assets/icons/${this.icon}.svg",
                color: light,
                width: 20,
                height: 20,
              ),
            ),
            SizedBox(height: 9),
            Text(
              this.name,
              style: regular,
            )
          ],
        ),
      ),
    );
  }
}
