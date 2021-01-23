import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep678_art_preview_app/ui/art_main_page.dart';

class ArtPreviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => ArtMainPage()
      },
    );
  }
}

