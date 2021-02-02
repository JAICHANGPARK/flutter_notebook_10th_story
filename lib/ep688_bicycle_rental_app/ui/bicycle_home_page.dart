import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BicycleRentalHomePage extends StatefulWidget {
  @override
  _BicycleRentalHomePageState createState() => _BicycleRentalHomePageState();
}

class _BicycleRentalHomePageState extends State<BicycleRentalHomePage> {
  int bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 72,
            color: Colors.white,
            child: GNav(
                selectedIndex: bottomIndex,
                onTabChange: (idx) {
                  setState(() {
                    bottomIndex = idx;
                  });
                },
                curve: Curves.easeOutExpo,
                // tab animation curves
                duration: Duration(milliseconds: 250),
                // tab animation duration
                gap: 2,
                // the tab button gap between icon and text
                activeColor: Colors.black,
                // selected icon and text color
                iconSize: 24,
                // tab button icon size
                tabBackgroundColor: Colors.orange,
                // selected tab background color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                // navigation bar padding
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.bicycle,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: LineIcons.mail_forward,
                    text: 'Search',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  )
                ]),
          ),
        ));
  }
}
