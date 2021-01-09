import 'package:flutter/material.dart';

class EstateMainPage extends StatefulWidget {
  @override
  _EstateMainPageState createState() => _EstateMainPageState();
}

class _EstateMainPageState extends State<EstateMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          Positioned(child: Placeholder(),
          top: 0,
          left: 0,
          right: 0,
          bottom: MediaQuery.of(context).size.height / 2.3,),
          Positioned(child: Placeholder(),
            top: MediaQuery.of(context).size.height / 2.8,
            left: 0,
            right: 0,
            bottom: 0,),

        ],

      )),
      bottomNavigationBar: BottomAppBar(

        child: Container(
          height: 64,
          child: Row(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
