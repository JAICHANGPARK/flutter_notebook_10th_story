import 'package:flutter/material.dart';


class FriendyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context) =>ReservationPage()
      }, 
    );
  }
}


