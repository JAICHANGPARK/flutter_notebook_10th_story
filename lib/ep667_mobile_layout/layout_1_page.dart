import 'package:flutter/material.dart';

import 'mobile_layout_app.dart';


class Layout1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("6" ,style: TextStyle(
            fontSize: 280,
            color: mobileLayoutAppColor
          ),)
        ],
      ),
    );
  }
}
