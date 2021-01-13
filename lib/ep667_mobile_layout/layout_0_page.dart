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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Attica",
                      style: TextStyle(color: Colors.white, fontSize: 48,
                      fontWeight: FontWeight.bold),
                    ),
                    Text("asd"),
                  ],
                ),
              ),

              Divider(
                color: Colors.white,
                thickness: 1,
              ),
            ],
          ),
        ));
  }
}
