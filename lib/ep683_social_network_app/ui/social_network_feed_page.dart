import 'package:flutter/material.dart';

class SocialNetworkFeedPage extends StatefulWidget {
  @override
  _SocialNetworkFeedPageState createState() => _SocialNetworkFeedPageState();
}

class _SocialNetworkFeedPageState extends State<SocialNetworkFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person_outline,
                    ),
                    Text(
                      "FEED",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                )),
            //Live
            Expanded(flex: 3, child: Placeholder()),
            //Tab
            Expanded(flex: 3, child: Placeholder()),
            //Feed
            Expanded(flex: 8, child: Placeholder()),
            //Botttom
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
