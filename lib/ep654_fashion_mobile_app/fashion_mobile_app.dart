import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep654_fashion_mobile_app/kids_collections_page.dart';

class FashionMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (context) => FashionHomePage(),
      "/kids/collections" : (context) => KidsCollectionsPage()
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
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _pageIdx, );
  }
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
            Expanded(
                flex: 14,
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (pIdx) {
                    setState(() {
                      _pageIdx = pIdx;

                    });
                  },
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 88,
                          child: Container(
                            color: Colors.indigo[50],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: _pageIdx == 0
                                      ? null
                                      : () {
                                          _pageIdx -= 1;
                                          if (_pageIdx < 0) {
                                            setState(() {
                                              _pageIdx = 0;
                                            });
                                          }
                                          jumpCollectionsPage(_pageIdx, 500);
                                        },
                                  icon: Icon(Icons.arrow_back),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _pageIdx++;
                                      jumpCollectionsPage(_pageIdx, 500);
                                    });
                                  },
                                  icon: Icon(Icons.arrow_forward),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Casual\nCollections",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.indigo,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 64,
                          right: 64,
                          top: 100,
                          bottom: -32,
                          child: Image.network("https://www.freepnglogos.com/uploads/kids-png/omaha-healthy-kids-alliance-38.png",
                          fit: BoxFit.fitHeight,),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 88,
                          child: Container(
                            color: Colors.indigo[50],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: _pageIdx == 0
                                      ? null
                                      : () {
                                          _pageIdx -= 1;
                                          if (_pageIdx < 0) {
                                            setState(() {
                                              _pageIdx = 0;
                                            });
                                          }
                                          jumpCollectionsPage(_pageIdx, 500);
                                        },
                                  icon: Icon(Icons.arrow_back),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _pageIdx++;
                                      jumpCollectionsPage(_pageIdx, 500);
                                    });

                                  },
                                  icon: Icon(Icons.arrow_forward),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Kids\nCollections",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.indigo,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 64,
                          right: 64,
                          top: 100,
                          bottom: -32,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed("/kids/collections");
                            },
                            child: Image.network("https://www.freepnglogos.com/uploads/kids-png/omaha-healthy-kids-alliance-38.png",
                              fit: BoxFit.fitHeight,),
                          ),
                        )
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

  void jumpCollectionsPage(int page, int duration){
    if(_pageController != null)
    _pageController.animateToPage(page, duration: Duration(
        milliseconds: duration
    ), curve: Curves.easeIn);
  }

}
