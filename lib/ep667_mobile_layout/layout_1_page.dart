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
          Text(
            "6",
            style: TextStyle(fontSize: 280, color: mobileLayoutAppColor, letterSpacing: 0, wordSpacing: 0, height: 0),
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: mobileLayoutAppColor,
            height: 24,
            indent: 16,
            endIndent: 16,
            thickness: 1.2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "South Aegean",
                      style: TextStyle(
                        color: mobileLayoutAppColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Visit",
                      style: TextStyle(
                        color: mobileLayoutAppColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18,
                      color: mobileLayoutAppColor,
                    )
                  ],
                ),
                Text(
                  "Administrative region",
                  style: TextStyle(
                    color: mobileLayoutAppColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                  style: TextStyle(fontSize: 10, color: mobileLayoutAppColor),
                ),
              )),
          Divider(
            thickness: 1.2,
            color: mobileLayoutAppColor,
            indent: 16,
            endIndent: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Area",
                      style: TextStyle(color: mobileLayoutAppColor),
                    )),
                    Expanded(
                        child: Text(
                      "78.19km^2",
                      style: TextStyle(color: mobileLayoutAppColor),
                    )),
                  ],
                ),
                Divider(
                  thickness: 1.2,
                  color: mobileLayoutAppColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
