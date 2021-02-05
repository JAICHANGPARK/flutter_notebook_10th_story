import 'package:flutter/material.dart';

class BicycleDetailPage extends StatefulWidget {
  @override
  _BicycleDetailPageState createState() => _BicycleDetailPageState();
}

class _BicycleDetailPageState extends State<BicycleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 36,
              width: 36,
              child: Card(
                child: Center(
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
