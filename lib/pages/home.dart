import 'package:flutter/material.dart';
import 'package:gojek_clone/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "Beranda",
                  style: semibold.copyWith(color: darkGreen),
                ),
              ),
              ...["Promo", "Pesanan", "Chat"].map((title) => Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 12),
                    child: Center(
                      child: Text(
                        title,
                        style: semibold,
                      ),
                    ),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
