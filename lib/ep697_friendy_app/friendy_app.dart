import 'package:flutter/material.dart';

import 'ui/friendy_reservation_page.dart';


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


