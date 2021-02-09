import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  int _pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(top: 72, left: 16, right: 16, bottom: 8),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search),
                        ),
                        Badge(
                          child: Icon(Icons.notifications_none),
                        )
                      ],
                    ),
                    Text("Portfolio balance"),
                    Row(
                      children: [
                        Text(
                          "\$8,401.10",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 24,
                            width: 80,
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)),
                            child: Center(
                              child: Text(
                                "+72.40%",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "+ \$3,204.90",
                          style: TextStyle(color: Colors.blueGrey, fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Gainers and Losers",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "See all",
                              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                  width: MediaQuery.of(context).size.width / 2.1,
                                  child: Card(
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 52,
                                            width: 52,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey[400]),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 8),
                                            child: Text(
                                              "Tesla",
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                                            ),
                                          ),
                                          Text(
                                            "\$855.90",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 24,
                                                width: 64,
                                                decoration: BoxDecoration(
                                                    color: Colors.green[50], borderRadius: BorderRadius.circular(4)),
                                                child: Center(
                                                  child: Text(
                                                    "+ 15.04",
                                                    style: TextStyle(color: Colors.green),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "+\$20.18",
                                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                            }),
                      )),
                ],
              )),
          Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 2, child: Placeholder()),
                    Expanded(flex: 10, child: Placeholder()),
                  ],
                ),
              )),
        ],
      ),
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIdx,
        onTap: (idx) {
          setState(() {
            _pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Portfolio"),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: "Transactions"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}
