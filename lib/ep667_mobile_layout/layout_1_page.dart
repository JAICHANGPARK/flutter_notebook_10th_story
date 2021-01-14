import 'package:flutter/material.dart';

import 'mobile_layout_app.dart';


class Layout1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 48,
          ),
          Text("6" ,style: TextStyle(
            fontSize: 280,
            color: mobileLayoutAppColor
          ),),
          Divider(
            color: mobileLayoutAppColor,
          )
        ],
      ),
    );
  }
}
