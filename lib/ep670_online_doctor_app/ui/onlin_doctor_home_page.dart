import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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
      body: SafeArea(
        child: SlidingUpPanel(
          minHeight: 200,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
          panel: Column(
            children: [
              SizedBox(height: 24,),
              Container(
                height: 3,
                width: 24,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4)
                ),
              )
            ],
          ),
          body: Stack(
            children: [
              _buildBackgroundWidget(),
              Positioned(
                left: 16,
                right: 0,
                top: 24,
                bottom: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Welcome home", style: TextStyle(
                                color: Colors.grey,
                              ),),
                              SizedBox(height: 12,),
                              Text("Dream Walker", style: TextStyle(
                                fontSize: 24,
                              ),),
                            ],
                          ),
                          Spacer(),
                          Badge(
                            child: Icon(Icons.notifications_none),
                          ),
                          SizedBox(width: 16,),
                          CircleAvatar(
                            radius: 24, //default 20
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.2))
                        ]
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  icon: Icon(Icons.person_outline),
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
