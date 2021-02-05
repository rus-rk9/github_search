import 'package:flutter/material.dart';
import 'package:github_search/screens/widgets/my_card.dart';
import 'widgets/my_app_bar.dart';
import 'widgets/my_text.dart';

const Map<String, Color> MyColor = {
  'grey': Color(0xFFDFDFDF),
  'greyText': Color(0xFFA6A6A6),
  'blue': Color(0xFF58AFFF),
};

const int found = 54;

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        appBarCaption: 'результат ПОИСКА',
        greyColor: MyColor['grey'],
      ),
      body: MyBody(),
    );
    // );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
              text: 'ПО ЗАПРОСУ: ',
              color: MyColor['greyText'],
            ),
            MyText(
              text: '"НАЗВАНИЕ ЗАПРОСА"',
              color: MyColor['blue'],
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        MyText(
          text: 'найдено: $found',
          color: MyColor['greyText'],
        ),
        SizedBox(
          height: 16,
        ),
        MyCard(
          repCaption: 'Название репозитория',
          username: 'Username',
          when: '3 января',
          borderColor: MyColor['grey'],
          backgroundColor: MyColor['greyText'],
          rate: 67,
        ),
      ],
    );
  }
}
