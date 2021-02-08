import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Portfolio"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Transactions"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "More"),
      ],

      ),
    );
  }
}
