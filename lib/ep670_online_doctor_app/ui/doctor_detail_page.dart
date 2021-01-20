import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';


class DoctorDetailPage extends StatefulWidget {
  final String doctorName;
  final String doctorPart;
  final String doctorRate;

  DoctorDetailPage({this.doctorName, this.doctorPart, this.doctorRate});

  @override
  _DoctorDetailPageState createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State<DoctorDetailPage> {
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
          body:  Stack(
            children: [
            _buildBackgroundWidget(),

        ],
      ),

        )
      ),
    );
  }
}
