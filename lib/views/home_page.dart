import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:widget_arrows/widget_arrows.dart';

import 'package:libras_site/themes/my_themes.dart';
import 'package:libras_site/widgets/homePage/first_row.dart';
import 'package:libras_site/widgets/homePage/second_row.dart';
import 'package:libras_site/widgets/homePage/third_row.dart';
import 'package:libras_site/widgets/homePage/fourth_row.dart';

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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.book,
                color: MyThemes.of(context).primaryBackground,
              ),
              Flexible(
                child: Text(
                  "Glossário de sinais/termos dos espaços turísticos de Santa Maria da Boa Vista, Sertão - Pernambuco",
                  style: MyThemes.of(context).title1,
                ),
              ),
              Icon(
                Icons.book,
                color: MyThemes.of(context).primaryBackground,
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FirstRow(),
                SizedBox(height: 25),
                SecondRow(),
                SizedBox(height: 20),
                ThirdRow(),
                SizedBox(height: 20),
                FourthRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
