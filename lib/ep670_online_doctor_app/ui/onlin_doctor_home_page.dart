import 'package:flutter/material.dart';

class OnlineDoctorHomePage extends StatefulWidget {
  @override
  _OnlineDoctorHomePageState createState() => _OnlineDoctorHomePageState();
}

class _OnlineDoctorHomePageState extends State<OnlineDoctorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Row(
              children: [
                Expanded(flex: 8, child: Container(
                  color: Colors.white,
                )),
                Expanded(flex: 3, child: Container(
                  color: Colors.grey[200],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
