import 'package:flutter/material.dart';

class ArtMainPage extends StatefulWidget {
  ArtMainPage({Key key}) : super(key: key);

  @override
  _ArtMainPageState createState() => _ArtMainPageState();
}

class _ArtMainPageState extends State<ArtMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 72,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}