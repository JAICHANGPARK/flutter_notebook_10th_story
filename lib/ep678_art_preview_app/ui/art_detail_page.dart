import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep678_art_preview_app/model/art.dart';

class ArtDetailPage extends StatefulWidget {
  final Art art;

  ArtDetailPage({this.art});

  @override
  _ArtDetailPageState createState() => _ArtDetailPageState();
}

class _ArtDetailPageState extends State<ArtDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Container(
          height: 72,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(24)),
                child: Center(
                    child: Text(
                  "Add to Library",
                )),
              )),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(24)),
                    child: Center(
                        child: Text(
                          "New Preview",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
