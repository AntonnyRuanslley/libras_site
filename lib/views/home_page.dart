import 'package:flutter/material.dart';

import 'package:libras_site/utils/screen_sizes.dart';
import 'package:libras_site/widgets/homePage/fifth_column.dart';
import 'package:libras_site/widgets/homePage/first_column.dart';
import 'package:libras_site/widgets/homePage/fourth_column.dart';
import 'package:libras_site/widgets/homePage/second_column.dart';
import 'package:libras_site/widgets/homePage/seventh_column.dart';
import 'package:libras_site/widgets/homePage/sixth_column.dart';
import 'package:libras_site/widgets/homePage/third_column.dart';
import 'package:libras_site/widgets/homePage/title_app_bar.dart';

import 'package:widget_arrows/widget_arrows.dart';

import 'package:libras_site/themes/my_themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ArrowContainer(
      child: Scaffold(
        backgroundColor: MyThemes.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: MyThemes.of(context).primaryColor,
          title: const TitleAppBar(),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FirstColumn(),
              SecondColumn(),
              ThirdColumn(),
              // FourthColumn(),
              // FifthColumn(),
              // SixthColumn(),
              // SeventhColumn(),
            ],
          ),
        ),
      ),
    );
  }
}
