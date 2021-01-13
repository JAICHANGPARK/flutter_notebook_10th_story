import 'package:flutter/material.dart';
import 'mobile_layout_app.dart';

class Layout0Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mobileLayoutAppColor,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 64,
          ),
          child: Column(
            children: [
              Text(
                "Attica",
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              Text("asd"),
              Divider(color: Colors.white, thickness: 1,),
            ],
          ),
        ));
  }
}
