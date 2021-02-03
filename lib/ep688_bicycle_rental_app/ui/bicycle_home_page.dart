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
      backgroundColor: Colors.blueGrey[50],
        body: SafeArea(

          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text("Hi"),
                      Text("Dream"),
                      Spacer(),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange), borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "Select",style: TextStyle(

                  )
                  ),
                  TextSpan(
                      text: "Bicycle",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ))
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "To Riding",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                  ),
                  TextSpan(
                      text: "Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ))
                ])),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 58,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Where do you want to go biking?",
                            hintStyle: TextStyle(
                              fontSize: 12
                            )
                          ),

                        )),
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                              border: Border.all(color: Colors.orange), borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(Icons.map_sharp),
                          ),
                        )
                      ],
                    ),
                  ),


                )
              ],
            ),
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
