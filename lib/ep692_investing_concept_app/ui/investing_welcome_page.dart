import 'package:flutter/material.dart';

import 'dashboard_page.dart';

class InvestingWelcomePage extends StatefulWidget {
  @override
  _InvestingWelcomePageState createState() => _InvestingWelcomePageState();
}

class _InvestingWelcomePageState extends State<InvestingWelcomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: PhysicalModel(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
                elevation: 4,
                color: Colors.grey,
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      )),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Welcome!",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(icon: Icon(Icons.clear), onPressed: () {})
                        ],
                      ),
                      Text(
                        "Choose your interests to follow and trade",
                        style: TextStyle(color: Colors.blueGrey[400]),
                      ),
                      Text(
                        "on your terms.",
                        style: TextStyle(color: Colors.blueGrey[400]),
                      ),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(border: Border.all(color: Colors.blue[50], width: 1.2)),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              hintText: "Search interests to follow...",
                              hintStyle: TextStyle(fontSize: 14, color: Colors.blue[100]),
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              top: 16,
              left: 0,
              right: 0,
            ),
            Positioned(
                left: 16,
                bottom: 0,
                top: 230,
                right: 16,
                child: GridView.count(
                  childAspectRatio: .87,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[200]),
                              ),
                            ),
                            Text(
                              "A Company",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            MaterialButton(
                              height: 32,
                              minWidth: double.infinity,
                              onPressed: () {},
                              color: Colors.black,
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[200]),
                              ),
                            ),
                            Text(
                              "GameStop",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "Followed",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[200]),
                              ),
                            ),
                            Text(
                              "D",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "Followed",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[200]),
                              ),
                            ),
                            Text(
                              "Tesla",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            MaterialButton(
                              height: 32,
                              minWidth: double.infinity,
                              onPressed: () {},
                              color: Colors.black,
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[200]),
                              ),
                            ),
                            Text(
                              "D",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "Followed",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[200]),
                              ),
                            ),
                            Text(
                              "Tesla",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            MaterialButton(
                              height: 32,
                              minWidth: double.infinity,
                              onPressed: () {},
                              color: Colors.black,
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              bottom: 32,
              right: 16,
              left: 16,
              child: Container(
                height: 58,
                decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DashboardPage()));

                  },
                  child: Center(
                    child: Text(
                      "Add to watchlist",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
