
import 'package:flutter/material.dart';

class ReservationPage extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //76 89 247   4C 59 F7
      backgroundColor: Color(0xFF4C59F7),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,child: Placeholder(),),
            Expanded(
              flex: 2,child: Placeholder(),),
            Expanded(
              flex: 6,child: Placeholder(),),
            Expanded(
              flex: 2,
              child: Placeholder(),),
            Expanded(
              flex: 5,
              child: Container(
              color: Colors.white,
            ),),

          ],
        ),
      ),
    );
  }
}
