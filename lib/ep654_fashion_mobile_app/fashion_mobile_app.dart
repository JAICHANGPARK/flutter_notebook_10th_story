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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Expanded(child: Placeholder()),
           Expanded(child: Placeholder()),
           Expanded(child: Placeholder()),
         ],
       ),
    );
  }
}






















