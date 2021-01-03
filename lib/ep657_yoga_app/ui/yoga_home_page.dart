import 'package:flutter/material.dart';

class YogaHomePage extends StatefulWidget {
  @override
  _YogaHomePageState createState() => _YogaHomePageState();
}

class _YogaHomePageState extends State<YogaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: CustomScrollView(
              slivers: [SliverAppBar()],
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.home_outlined),
                      color: Colors.orange,
                      iconSize: 32,
                      onPressed: () {},
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
