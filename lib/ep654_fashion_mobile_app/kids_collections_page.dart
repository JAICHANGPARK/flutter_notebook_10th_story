import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KidsCollectionsPage extends StatefulWidget {
  @override
  _KidsCollectionsPageState createState() => _KidsCollectionsPageState();
}

class _KidsCollectionsPageState extends State<KidsCollectionsPage> {
  int _homeIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_alt_outlined),
            ),
          ]),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Kids\nCollections",
            style: TextStyle(
              fontSize: 40,
              color: Colors.indigo,
            ),
            textAlign: TextAlign.center,
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 64,
                      ),
                      Positioned(
                          right: 8,
                          child: CircleAvatar(

                        backgroundColor: Colors.teal,
                      ))
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _homeIdx,
        onTap: (homeIndex) {
          setState(() {
            _homeIdx = homeIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: ""),
        ],
      ),
    );
  }
}
