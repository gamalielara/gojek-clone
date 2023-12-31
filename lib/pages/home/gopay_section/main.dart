import 'package:flutter/cupertino.dart';
import 'package:gojek_clone/pages/home/gopay_section/gopay_box.dart';
import 'package:gojek_clone/pages/home/gopay_section/gopay_section_button.dart';
import 'package:gojek_clone/theme.dart';
import '../../../data/gopay_section_buttons.dart';

class GopaySection extends StatelessWidget {
  const GopaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 96,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: darkBlue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GopayBox(),
          ...gopaySectionButtons.entries.map((entry) =>
              GopaySectionButton(title: entry.key, icon: entry.value))
        ],
      ),
    );
  }
}
