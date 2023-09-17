import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/theme.dart';

import '../../../data/ordershortcuts.dart';

class OrderShortcut extends StatelessWidget {
  const OrderShortcut({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...orderShortcuts.map((order) => Container(
                margin: EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: grey.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      order['destination'],
                      style: regular,
                    ),
                    SizedBox(width: 5),
                    SvgPicture.asset(
                      "assets/icons/goride.svg",
                      color: primaryGreen,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
