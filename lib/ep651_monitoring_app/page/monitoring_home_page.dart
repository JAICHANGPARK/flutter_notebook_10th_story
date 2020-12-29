import 'package:flutter/material.dart';

class MonitoringHomePage extends StatefulWidget {
  @override
  _MonitoringHomePageState createState() => _MonitoringHomePageState();
}

class _MonitoringHomePageState extends State<MonitoringHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                color: Colors.blueAccent,
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 180,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
