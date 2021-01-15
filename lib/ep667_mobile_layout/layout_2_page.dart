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
              height: 4,
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "blablablabalblaabl\nRregion",
                    style: TextStyle(color: mobileLayoutAppColor, fontSize: 12),
                  )),
                  Expanded(
                    child: Text(
                      "blablablabalblaabl\nRregion",
                      style: TextStyle(color: mobileLayoutAppColor, fontSize: 12),
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
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
                " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris"
                " nisi ut aliquip ex ea commodo consequat. "
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
                " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                "nisi ut aliquip ex ea commodo consequat. "
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
                " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                "nisi ut aliquip ex ea commodo consequat. ",
                style: TextStyle(color: mobileLayoutAppColor, fontSize: 16),
              ),
            ),
            Divider(
              thickness: 1.2,
              color: mobileLayoutAppColor,
              indent: 8,
              endIndent: 8,
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    "Cities",
                    style: TextStyle(color: mobileLayoutAppColor, fontSize: 16),
                  )),
                  Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Cities",
                            style: TextStyle(color: mobileLayoutAppColor, fontSize: 16),
                          ),
                          Text(
                            "Cities",
                            style: TextStyle(color: mobileLayoutAppColor, fontSize: 16),
                          ),
                          Text(
                            "Cities",
                            style: TextStyle(color: mobileLayoutAppColor, fontSize: 16),
                          ),
                          Text(
                            "Cities",
                            style: TextStyle(color: mobileLayoutAppColor, fontSize: 16),
                          ),
                          Text(
                            "Cities",
                            style: TextStyle(color: mobileLayoutAppColor, fontSize: 16),
                          ),
                          Text(
                            "Cities",
                            style: TextStyle(color: mobileLayoutAppColor, fontSize: 16),
                          ),

                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
