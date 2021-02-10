import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'bicycle_detail_page.dart';

class BicycleRentalHomePage extends StatefulWidget {
  @override
  _BicycleRentalHomePageState createState() => _BicycleRentalHomePageState();
}

class _BicycleRentalHomePageState extends State<BicycleRentalHomePage> with TickerProviderStateMixin {
  int bottomIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text("Hi, ", style: TextStyle(fontSize: 20)),
                      Text("Dream", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "Select ", style: TextStyle(fontSize: 24)),
                    TextSpan(text: "Bicycle", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))
                  ])),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "To Riding", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                    TextSpan(text: " Now", style: TextStyle(fontSize: 24))
                  ])),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 9),
                    height: 58,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: "Where do you want to go biking?",
                              hintStyle: TextStyle(fontSize: 12)),
                        )),
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(color: Colors.orange),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(Icons.map_sharp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(
                        text: "Newest",
                      ),
                      Tab(
                        text: "Popular",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                  width: MediaQuery.of(context).size.width / 1.5,
                                  child: Card(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                          return BicycleDetailPage(
                                              img:"https://lh3.googleusercontent.com/proxy/"
                                                  "T8NKqdv0Igiid-D7o3-fJyMQZR-7nJX4Anbw7ajCoZrm0SCglsTErFpyXhKdRAjGVSqJauL4bqzkaoYbsyhYcnOnzCm"
                                                  "d1azyj2og4uZlRLiEpqLuVrPW71zABvw");
                                        }));
                                      },
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              left: 16,
                                              top: 16,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Go Cycle",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Electric Bike",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                                    child: Text(
                                                      "13\$",
                                                      style: TextStyle(color: Colors.orange, fontSize: 20),
                                                    ),
                                                  )
                                                ],
                                              )),
                                          Positioned(
                                              bottom: 16,
                                              left: 0,
                                              right: 0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Range",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black54,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                                        child: Text("50 mil"),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Speed",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black54,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                                        child: Text("75kmh"),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Power",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black54,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                                        child: Text("387wh"),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 36,
                                                    width: 36,
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        border: Border.all(color: Colors.orange),
                                                        borderRadius: BorderRadius.circular(8)),
                                                    child: Center(
                                                      child: Icon(Icons.arrow_forward),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                          Positioned(
                                            child: Container(
                                              height: 72,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                        "https://lh3.googleusercontent.com/proxy/T8NKqdv0Igiid-D7o3-fJyMQZR-7nJX4Anbw7ajCoZrm0SCglsTErFpyXhKdRAjGVSqJauL4bqzkaoYbsyhYcnOnzCmd1azyj2og4uZlRLiEpqLuVrPW71zABvw",
                                                      ),
                                                      fit: BoxFit.fitHeight)),
                                            ),
                                            right: 16,
                                            top: 8,
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                            }),
                        ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                  child: Card(
                                child: Stack(
                                  children: [
                                    Positioned(
                                        left: 16,
                                        top: 16,
                                        child: Column(
                                          children: [],
                                        ))
                                  ],
                                ),
                              ));
                            })
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
            padding: EdgeInsets.symmetric(horizontal: 16),
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
                    icon: LineIcons.voicemail,
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
