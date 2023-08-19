import 'package:flutter/material.dart';
import 'package:gojek_clone/data/enum.dart';
import 'package:gojek_clone/pages/home/header_button.dart';
import 'package:gojek_clone/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedButton = "HOME";

  void onNavChange(navName) {
    setState(() {
      selectedButton = navName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryGreen,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: darkGreen,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              ...buttonMaps.entries.map((entry) =>
                  HeaderButton(
                    title: entry.value,
                    isSelected: entry.key == selectedButton,
                    callBackFunc: () => onNavChange(entry.key),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
