import 'package:flutter/material.dart';


class FashionMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => FashionHomePage(),
      }
    );
  }
}

class FashionHomePage extends StatefulWidget {
  @override
  _FashionHomePageState createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  int _homeIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Column(
           children: [
             Expanded(child: Placeholder()),
             Expanded(child: Placeholder()),
             Expanded(child: Placeholder()),
           ],
         ),

       ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _homeIdx,

        onTap: (homeIndex){
          setState(() {
            _homeIdx = homeIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,
          ),
          label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.apps_outlined,
          ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,
          ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,
          ),
              label: ""),

        ],
      ),
    );
  }
}





















