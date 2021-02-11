
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(

                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepOrangeAccent,
                      radius: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Selected", style: TextStyle(
                        color: Colors.white.withOpacity(0.7)
                      ),),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.7),
                      radius: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Reserved", style: TextStyle(
                          color: Colors.white.withOpacity(0.7)
                      ),),
                    ),
                    Spacer(),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Available", style: TextStyle(
                          color: Colors.white.withOpacity(0.7)
                      ),),
                    ),

                  ],
                ),
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
