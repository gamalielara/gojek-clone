import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/pages/home/menu_section/menu_icon.dart';
import '../../../data/lp_menu.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
      child: Wrap(
        spacing: 53,
        runSpacing: 30,
        direction: Axis.horizontal,
        children: [
          ...menus.entries.map(
            (entry) => MenuIcon(
                name: entry.key,
                icon: entry.value["icon_name"],
                color: entry.value["color"]),
          )
        ],
      ),
    );
  }
}
