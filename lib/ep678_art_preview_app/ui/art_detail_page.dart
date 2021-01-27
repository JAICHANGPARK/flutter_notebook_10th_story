import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep678_art_preview_app/model/art.dart';

class ArtDetailPage extends StatefulWidget {
  final Art art;

  ArtDetailPage({this.art});

  @override
  _ArtDetailPageState createState() => _ArtDetailPageState();
}

class _ArtDetailPageState extends State<ArtDetailPage> {
  Widget buildBottomBar(){
    return BottomAppBar(
      elevation: 5,
      child: Container(
        height: 72,
        padding: EdgeInsets.symmetric(horizontal: 12),
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
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffefefe),
        foregroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(widget.art.name, style: TextStyle(
          fontSize: 18,
          color: Colors.black
        ),),

      ),
      bottomNavigationBar: buildBottomBar(),
    );
  }
}
