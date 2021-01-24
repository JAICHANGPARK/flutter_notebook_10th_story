import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep678_art_preview_app/ui/art_main_page.dart';

const String ART_HOME_ROUTE = "/";

class ArtPreviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ART_HOME_ROUTE,
      routes: {ART_HOME_ROUTE: (context) => ArtMainPage()},
    );
  }
}
