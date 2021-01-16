import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class OnlineDoctorHomePage extends StatefulWidget {
  @override
  _OnlineDoctorHomePageState createState() => _OnlineDoctorHomePageState();
}

class _OnlineDoctorHomePageState extends State<OnlineDoctorHomePage> {
  Widget _buildBackgroundWidget() {
    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      right: 0,
      child: Row(
        children: [
          Expanded(
              flex: 8,
              child: Container(
                color: Colors.white,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.grey[200],
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackgroundWidget(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
        child: BottomAppBar(
          elevation: 8,
          child: Container(
            height: 80,
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.home), onPressed: () {}),
                IconButton(
                  icon: Icon(Icons.chat_bubble_outline),
                  onPressed: () {},
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 58,
                  width: 58,
                  child: ClipPolygon(
                    borderRadius: 4.0,
                    boxShadows: [
                      PolygonBoxShadow(color: Colors.orange, elevation: 3),
                    ],
                    child: Container(
                        color: Colors.deepOrangeAccent,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                    sides: 6,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today_outlined),
                  color: Colors.grey[400],
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today_outlined),
                  color: Colors.grey[400],
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
