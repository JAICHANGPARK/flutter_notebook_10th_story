import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'doctor_detail_page.dart';

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
              SizedBox(
                height: 24,
              ),
              Container(
                height: 3,
                width: 24,
                decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 64,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey[300])),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(color: Colors.red[100], borderRadius: BorderRadius.circular(8)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Diagnostic Radiology",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "25 Doctors",
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    IconButton(icon: Icon(Icons.keyboard_arrow_right), onPressed: () {})
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 64,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey[300])),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(color: Colors.red[100], borderRadius: BorderRadius.circular(8)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Nuclear medicine",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "12 Doctors",
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    IconButton(icon: Icon(Icons.keyboard_arrow_right), onPressed: () {})
                  ],
                ),
              ),
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
                              Text(
                                "Welcome home",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Dream Walker",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Badge(
                            child: Icon(Icons.notifications_none),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          CircleAvatar(
                            radius: 24, //default 20
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        height: 48,
                        width: double.infinity,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2))]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.tune),
                              hintText: "Search doctors..."),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 260,
                      width: double.infinity,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Recommended Doctors"),
                                    Icon(Icons.more_horiz),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        width: 240,
                                        margin: EdgeInsets.only(right: 16),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 4,
                                              child: GestureDetector(
                                                onTap: (){
                                                  Navigator.of(context).push(MaterialPageRoute(
                                                    builder: (context) => DoctorDetailPage(
                                                      doctorName: "Dr.Dreamwalker",
                                                      doctorPart: "Flutter ",
                                                      doctorRate: "4.0",
                                                      doctorImg: "https://cdn.pixabay.com/photo/2020/12/29/22/22/doctor-5871743__340.jpg",
                                                    )
                                                  ));
                                                },
                                                child: Hero(
                                                  tag: "imgProfile",
                                                  child: Container(
                                                    margin: EdgeInsets.only(bottom: 0),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(16),
                                                        color: Colors.grey,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://cdn.pixabay.com/photo/2020/12/29/22/22/doctor-5871743__340.jpg"),
                                                        fit: BoxFit.cover)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                padding: EdgeInsets.symmetric(vertical: 12),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Dr. Dreamwalker',
                                                      style: TextStyle(fontWeight: FontWeight.bold),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Flutter Specialist",
                                                          style: TextStyle(fontSize: 12),
                                                        ),
                                                        Spacer(),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Icon(
                                                            Icons.star,
                                                            color: Colors.orangeAccent,
                                                            size: 14,
                                                          ),
                                                        ),
                                                        Text(
                                                          "(4.0)",
                                                          style: TextStyle(fontSize: 12),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ));
                                  }),
                            ),
                          ],
                        ),
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
