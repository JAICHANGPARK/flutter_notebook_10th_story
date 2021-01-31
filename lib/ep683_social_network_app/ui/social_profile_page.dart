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
        header: Text("Hello"),
        footer: Text("Hello"),
        body: Stack(
          children: [
            Positioned(child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2019/11/30/17/53/girl-4663792_960_720.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35),

                  BlendMode.darken)
                )
              ),
            ),
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,),

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