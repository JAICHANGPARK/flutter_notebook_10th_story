import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep678_art_preview_app/model/art.dart';

class ArtDetailPage extends StatefulWidget {
  final Art art;

  ArtDetailPage({this.art});

  @override
  _ArtDetailPageState createState() => _ArtDetailPageState();
}

class _ArtDetailPageState extends State<ArtDetailPage> {
  Widget buildBottomBar() {
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
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),
              child: Center(
                  child: Text(
                "New Preview",
                style: TextStyle(color: Colors.white),
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
        title: Text(
          widget.art.name,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      bottomNavigationBar: buildBottomBar(),
      body: Column(
        children: [
          Hero(
            tag: widget.art.name,
            child: Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.art.img), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(widget.art.name),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[400],
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.art.detail),
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Text("(2013) Clear epoxy resin coating applications of black, violet and yellow colors"),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 48,
            width: 130,
            decoration: BoxDecoration(color: Colors.pink[300], borderRadius: BorderRadius.circular(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.tag),
                Text(
                  "\$5000",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
