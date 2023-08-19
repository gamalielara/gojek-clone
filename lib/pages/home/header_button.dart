import 'package:flutter/material.dart';
import 'package:gojek_clone/data/enum.dart';
import 'package:gojek_clone/theme.dart';

class HeaderButton extends StatelessWidget {
  final bool? isSelected;
  final String title;
  Function callBackFunc;

  HeaderButton({required this.title, required this.callBackFunc, this.isSelected});

  @override
  Widget build(BuildContext context) {
    if (this.isSelected ?? false) {
      return GestureDetector(
        onTap: () => callBackFunc(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: Text(
            title,
            style: semibold.copyWith(color: darkGreen),
          ),
        ),
      );
    } else {
      return Flexible(
          fit: FlexFit.loose,
          child: GestureDetector(
              onTap: () => callBackFunc(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Center(
                  child: Text(
                    title,
                    style: semibold,
                  ),
                ),
              ))
      );
    }
  }
}

Map<String, String> buttonMaps = {
  "HOME": "Beranda",
  "PROMO": "Promo",
  "ORDER": "Pesanan",
  "CHAT": "Chat",
};
