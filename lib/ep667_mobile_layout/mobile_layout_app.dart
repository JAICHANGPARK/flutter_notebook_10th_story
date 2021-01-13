import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep667_mobile_layout/layout_0_page.dart';

Color mobileLayoutAppColor = Color(0xff040dfd);
class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => Layout0Page(),
        // "/layout/1" : (context) =>
      },
      initialRoute: "/",
    );
  }
}
