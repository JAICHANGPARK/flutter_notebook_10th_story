
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
              flex: 1,child: Placeholder(
              color: Colors.white,
            ),),
            Expanded(
              flex: 1,child: Placeholder(  color: Colors.white,),),
            Expanded(
              flex: 8,child: Placeholder(  color: Colors.white,),),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    radius: 8,
                  ),
                  Text("Selected"),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    radius: 8,
                  ),
                  Text("Selected"),
                  CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    radius: 8,
                  ),
                  Text("Selected"),

                ],
              ),),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )
                ),
            ),),

          ],
        ),
      ),
    );
  }
}
