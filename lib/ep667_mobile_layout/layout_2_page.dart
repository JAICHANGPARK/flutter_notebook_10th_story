import 'package:flutter/material.dart';

import 'mobile_layout_app.dart';

class Layout2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Epirus\nRregion",
                    style: TextStyle(color: mobileLayoutAppColor),
                  )),
                  Expanded(
                    child: Text(
                      "Grece",
                      style: TextStyle(color: mobileLayoutAppColor),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.2,
              color: mobileLayoutAppColor,
              indent: 8,
              endIndent: 8,
            ),
          ],
        ),
      ),
    );
  }
}
