

import 'package:flutter/material.dart';


class YogaHomePage extends StatefulWidget {
  @override
  _YogaHomePageState createState() => _YogaHomePageState();
}

class _YogaHomePageState extends State<YogaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
