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
                child: Placeholder()),
            //Live
            Expanded(
                flex: 3,
                child: Placeholder()),
            //Tab
            Expanded(
                flex: 3,child: Placeholder()),
            //Feed
            Expanded(
                flex: 8,
                child: Placeholder()),
            //Botttom
            Expanded(
                flex: 1,child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
