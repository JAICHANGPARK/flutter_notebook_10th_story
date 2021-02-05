import 'package:flutter/material.dart';

class BicycleDetailPage extends StatefulWidget {
  final String img;

  BicycleDetailPage({this.img});

  @override
  _BicycleDetailPageState createState() => _BicycleDetailPageState();
}

class _BicycleDetailPageState extends State<BicycleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 16,
              child: Container(
                height: 48,
                width: 48,
                child: Card(
                  elevation: 8,
                  child: Center(
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ),
            Positioned(
              child: CircleAvatar(
                radius: 124,
                backgroundColor: Colors.orange[50],
              ),
              right: 16,
              top: 16,
            ),
            Positioned(
              child: SizedBox(
                  height: 240,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                      widget.img,
                    ),)),
                  )),
              left: 64,
              right: 64,
              top: 64,
            ),
            Positioned(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("GoCycle",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("Electric Bike",style: TextStyle(
                            fontSize: 12,

                          ),),
                        )
                      ],
                    ),
                    Spacer(),
                    Text("13\$"),
                    Text("/hour")
                  ],
                )
              ],
            ),
            top: 340,
            left: 16,
            right: 16,)
          ],
        ),
      ),
    );
  }
}
