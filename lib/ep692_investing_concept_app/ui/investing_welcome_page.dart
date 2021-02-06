import 'package:flutter/material.dart';

class InvestingWelcomePage extends StatefulWidget {
  @override
  _InvestingWelcomePageState createState() => _InvestingWelcomePageState();
}

class _InvestingWelcomePageState extends State<InvestingWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(child: Container(
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                )
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
