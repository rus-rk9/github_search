import 'package:flutter/material.dart';
import 'package:github_search/screens/widgets/my_button.dart';
import 'widgets/my_app_bar.dart';
import 'widgets/my_button.dart';

const Map<String, Color> MyColor = {
  'grey': Color(0xFFDFDFDF),
  'blue': Color(0xFF58AFFF),
};

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        appBarCaption: 'ПОИСК',
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
        SizedBox(height: 85),
        Container(
          height: 50,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: MyColor['grey'],
              style: BorderStyle.solid,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              MyButton(
                caption: 'найти',
                blueColor: MyColor['blue'],
                onPressed: null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
