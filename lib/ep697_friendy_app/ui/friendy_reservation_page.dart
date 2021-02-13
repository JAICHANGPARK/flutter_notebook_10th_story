import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReservationPage extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  int tabIndex = 0;
  Color reserveAppColor = Color(0xFF4C59F7);

  var items = [
    [false, true, true, false, false, false],
    [false, false, true, true, true, true, true, false],
    [false, false, true, true, true, true, false, false],
    [false, false, true, true, true, true, false, false],
    [false, false, true, true, true, true, false, false],
    [false, true, true, true, false, false, false, false],
    [false, true, true, false, false, false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //76 89 247   4C 59 F7
      backgroundColor: reserveAppColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 18,
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Saturday, 13 February",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              tabIndex = 0;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 12, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(8),
                              color: tabIndex == 0 ? Colors.white : Colors.transparent,
                            ),
                            child: Center(
                              child: Text(
                                "15:00 PM",
                                style: TextStyle(
                                  color: tabIndex == 0 ? reserveAppColor : Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              tabIndex = 1;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 12, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(8),
                              color: tabIndex == 1 ? Colors.white : Colors.transparent,
                            ),
                            child: Center(
                              child: Text(
                                "17:00 PM",
                                style: TextStyle(
                                  color: tabIndex == 1 ? reserveAppColor : Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              tabIndex = 2;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 12, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(8),
                                color: tabIndex == 2 ? Colors.white : Colors.transparent),
                            child: Center(
                              child: Text(
                                "20:00 PM",
                                style: TextStyle(
                                  color: tabIndex == 2 ? reserveAppColor : Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 8,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: items.map((a) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                   a.map((b){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: 24,
                         width: 24,
                         decoration: BoxDecoration(
                             color: b ? Colors.white : Colors.transparent,
                             shape: BoxShape.circle,
                             border: Border.all(color: Colors.white)
                         ),
                       ),
                     );
                   }

                   ).toList(),)).toList(),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepOrangeAccent,
                      radius: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Selected",
                        style: TextStyle(color: Colors.white.withOpacity(0.7)),
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.7),
                      radius: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Reserved",
                        style: TextStyle(color: Colors.white.withOpacity(0.7)),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Available",
                        style: TextStyle(color: Colors.white.withOpacity(0.7)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    )),
                padding: EdgeInsets.only(left: 24, right: 24, bottom: 16, top: 8),
                child: Column(
                  children: [
                    Expanded(
                        flex: 6,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg"),
                                        fit: BoxFit.cover),
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(9)),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Tenet",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                    Text(
                                      "Duration: 150min",
                                      style: TextStyle(),
                                    ),
                                    Text(
                                      "K-Cineplex",
                                      style: TextStyle(fontSize: 12, color: reserveAppColor),
                                    ),
                                    Text(
                                      "Sat 13 Feb - 20:00",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: reserveAppColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "Pay \$ 26.00",
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
