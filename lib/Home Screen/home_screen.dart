import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../General Widgets/Story Widgets/stories_row_widget.dart';
import '../General Widgets/header_widget.dart';
import './Widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        // navigationBar: CupertinoNavigationBar(
        //   middle: null,//HeaderWidget(),
        // ),
        child: SafeArea(
      child: Column(
        children: [
          HeaderWidget(true),
          StoriesRowWidget(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return PostWidget();
              },
            ),
          )
        ],
      ),
    ));
  }
}
