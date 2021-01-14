import 'package:flutter/material.dart';

import 'mobile_layout_app.dart';


class Layout1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 280,
          ),
          Text("6" ,style: TextStyle(
            fontSize: 280,
            color: mobileLayoutAppColor,
            letterSpacing: 0,
            wordSpacing: 0,
            height: 0
          ),),
          Divider(
            color: mobileLayoutAppColor,
          )
        ],
      ),
    );
  }
}
