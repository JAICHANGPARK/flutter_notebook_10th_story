import 'package:flutter/material.dart';

class FashionMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (context) => FashionHomePage(),
    });
  }
}

class FashionHomePage extends StatefulWidget {
  @override
  _FashionHomePageState createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  int _homeIdx = 0;
  int _pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search Products",
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.2)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.2)),
                    ),
                  ),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.green[200],
                            ),
                            Text("Hats"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.blue[200],
                                ),
                                Positioned(
                                  right: 3,
                                  top: 6,
                                  child: CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.redAccent,
                                  ),
                                ),
                              ],
                            ),
                            Text("Gloves"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.brown[100],
                            ),
                            Text("Bags"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.brown[200],
                            ),
                            Text("Jeans"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.brown[100],
                            ),
                            Text("Shoes"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.brown[100],
                            ),
                            Text("Bags"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.brown[200],
                            ),
                            Text("Jeans"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.brown[100],
                            ),
                            Text("Shoes"),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(flex: 14, child:

            PageView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              onPageChanged: (pIdx){
                setState(() {
                  _pageIdx = pIdx;
                });
              },
              children: [
                Stack(
                  children: [
                    Positioned(child: Text("Casual\nCollections", style: TextStyle(
                      fontSize: 24,
                      color: Colors.indigo,
                    ),
                    
                    ),

                    ),
                  ],
                )
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _homeIdx,
        onTap: (homeIndex) {
          setState(() {
            _homeIdx = homeIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: ""),
        ],
      ),
    );
  }
}
