import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DoctorDetailPage extends StatefulWidget {
  final String doctorName;
  final String doctorPart;
  final String doctorRate;
  final String doctorImg;

  DoctorDetailPage({this.doctorImg, this.doctorName, this.doctorPart, this.doctorRate});

  @override
  _DoctorDetailPageState createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State<DoctorDetailPage> {
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
        minHeight: 300,
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
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About The Doctor",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, "
                    "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        label: Text("Dentist"),
                        backgroundColor: Colors.grey[200],
                        labelPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                      Chip(
                        label: Text("Cancer"),
                        backgroundColor: Colors.grey[200],
                        labelPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                      Chip(
                        label: Text("Heart"),
                        backgroundColor: Colors.grey[200],
                        labelPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Booking Now"),
                    ),
                  )
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
                right: 16,
                top: 24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300],
                          ),
                          borderRadius: BorderRadius.circular(16)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Detail Doctor",
                      style: TextStyle(fontSize: 16),
                    ),
                    IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
                  ],
                )),
            Positioned(
              left: 16,
              right: 16,
              top: 110,
              child: Row(
                children: [
                  Hero(
                    tag: "imgProfile",
                    child: Container(
                      height: 84,
                      width: 84,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(
                                widget.doctorImg,
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(widget.doctorName,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(widget.doctorPart),
                        ),
                        Row(

                          children: [
                            Icon(Icons.star, color: Colors.deepOrangeAccent,
                            size: 14,),
                            Icon(Icons.star, color: Colors.deepOrangeAccent,
                              size: 14,),
                            Icon(Icons.star, color: Colors.deepOrangeAccent,
                              size: 14,),
                            Icon(Icons.star, color: Colors.deepOrangeAccent,
                              size: 14,),
                            Icon(Icons.star, color: Colors.grey,
                              size: 14,),
                            Text(" (${widget.doctorRate})"),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(color: Colors.orangeAccent, borderRadius: BorderRadius.circular(32)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 3,
                      width: 24,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Set Schdule", style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    DatePicker(
                      DateTime.now(),
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Colors.white.withOpacity(0.5),
                      deactivatedColor: Colors.white,


                    )

                  ],
                ),
              ),
              left: 0,
              right: 0,
              bottom: 0,
              top: 220,
            ),
          ],
        ),
      )),
    );
  }
}
