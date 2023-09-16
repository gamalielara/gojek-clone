import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/theme.dart';

class GopayBox extends StatelessWidget {
  const GopayBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 127,
        height: 68,
        decoration: BoxDecoration(
          color: light,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/gopay.png",
                height: 14,
              ),
              Text(
                "Rp12.000",
                style: bold16,
              ),
              Text(
                "Klik & cek riwayat",
                style: bold16.copyWith(color: primaryGreen, fontSize: 12)
              ),
            ],

          ),
        ));
  }
}
