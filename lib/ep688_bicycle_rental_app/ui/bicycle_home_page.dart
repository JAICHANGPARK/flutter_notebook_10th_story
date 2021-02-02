import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BicycleRentalHomePage extends StatefulWidget {
  @override
  _BicycleRentalHomePageState createState() => _BicycleRentalHomePageState();
}

class _BicycleRentalHomePageState extends State<BicycleRentalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
      bottomNavigationBar: GNav(
          tabs: [
            GButton(
              icon: Icon(Icons.home)
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.heart_o,
              text: 'Likes',
            ),
            GButton(
              icon: LineIcons.search,
              text: 'Search',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            )
          ]
      ),
    );
  }
}
