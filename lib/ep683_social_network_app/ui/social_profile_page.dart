import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SocialProfilePage extends StatefulWidget {
  SocialProfilePage({Key key}) : super(key: key);

  @override
  _SocialProfilePageState createState() => _SocialProfilePageState();
}

class _SocialProfilePageState extends State<SocialProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        body: Stack(
          children: [

          ],
        ),
        panel: Column(
          children: [

          ],
        ),

      ),
    );
  }
}