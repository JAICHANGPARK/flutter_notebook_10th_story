import 'package:flutter/material.dart';

class BicycleDetailPage extends StatefulWidget {
  @override
  _BicycleDetailPageState createState() => _BicycleDetailPageState();
}

class _BicycleDetailPageState extends State<BicycleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 16,
              child: Container(
                height: 48,
                width: 48,
                child: Card(
                  elevation: 8,
                  child: Center(
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
