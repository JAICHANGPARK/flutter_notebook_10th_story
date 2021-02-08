import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  int _pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(top: 64),
                color: Colors.white,
                child: Column(
                  children: [
                      Row(
                        children: [
                          Text("Dashboard" , style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),),
                          Icon(Icons.search),
                          Badge(
                            child: Icon(Icons.notifications_none),

                          )
                        ],
                      )
                  ],
                ),
              )),
          Expanded(
            flex: 5,
              child: Placeholder()),
          Expanded(
              flex: 7,
              child: Placeholder()),

        ],
      ),
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIdx,
        onTap: (idx){
          setState(() {
            _pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Portfolio"),
        BottomNavigationBarItem(icon: Icon(Icons.code), label: "Transactions"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
      ],

      ),
    );
  }
}
