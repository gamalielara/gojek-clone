import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/data/news.dart';
import 'package:gojek_clone/pages/home/gopay_section/main.dart';
import 'package:gojek_clone/pages/home/header_button.dart';
import 'package:gojek_clone/pages/home/menu_section/main.dart';
import 'package:gojek_clone/pages/home/news_card/main.dart';

import '../../theme.dart';
import 'order_shortcut/main.dart';

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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryGreen,
    ));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: primaryGreen,
            elevation: 0,
            toolbarHeight: 90,
            title: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: darkGreen,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  ...buttonMaps.entries.map((entry) => HeaderButton(
                        title: entry.value,
                        isSelected: entry.key == selectedButton,
                        callBackFunc: () => onNavChange(entry.key),
                      )),
                ],
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
                child: Row(
                  children: [
                    Flexible(
                        // Search bar
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: light,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: grey)),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/search.svg",
                                color: dark,
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: TextField(
                                  style: regular.copyWith(
                                      color: grey, fontSize: 12),
                                  decoration: InputDecoration.collapsed(
                                    hintText: "Cari layanan, mkanan & tujuan",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Stack(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40 / 2),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              "assets/images/dog.jpg",
                            ),
                          ),
                          Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                width: 20,
                                height: 20,
                                padding: const EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40 / 2),
                                    color: Color(0xFFD1E7EE)),
                                clipBehavior: Clip.hardEdge,
                                child: SvgPicture.asset(
                                  "assets/icons/goclub.svg",
                                  color: primaryBlue,
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const GopaySection(),
              MenuSection(),
              OrderShortcut(),
              ...newsData.map(
                (news) => NewsCard(news.thumbnailImage, news.title, news.desc),
              )
            ],
          ),
        ),
      ),
    );
  }
}
