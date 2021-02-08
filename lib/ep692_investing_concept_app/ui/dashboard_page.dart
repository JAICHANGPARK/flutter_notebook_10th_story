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
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Portfolio"),
        BottomNavigationBarItem(icon: Icon(Icons.code), label: "Transactions"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
      ],

      ),
    );
  }
}
