import 'package:flutter/material.dart';


class InvestingConceptApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Investing Concept App",
      routes: {
        "/": (context)=>InvestingWelcomePage()
      },
    );
  }
}
