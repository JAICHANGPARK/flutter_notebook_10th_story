import 'package:flutter/material.dart';

class ArtMainPage extends StatefulWidget {
  ArtMainPage({Key key}) : super(key: key);

  @override
  _ArtMainPageState createState() => _ArtMainPageState();
}

class _ArtMainPageState extends State<ArtMainPage> {
  int _tabIndex = 0;
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Discover",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent[100],
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Center(
                                    child: Text("Browse",style: TextStyle(
                                      fontSize: 16,
                                    ),),
                                  ),
                                ),
                                Positioned(child: Container(height: 2,
                                color: Colors.black,),
                                left: 30,
                                right: 30,
                                bottom: 0,)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 32,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent[100],
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Center(
                                    child: Text("Artists",style: TextStyle(
                                      fontSize: 16,
                                    ),),
                                  ),
                                ),
                                Positioned(child: Container(height: 2,
                                  color: Colors.black,),
                                  left: 30,
                                  right: 30,
                                  bottom: 0,)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 32,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent[100],
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Center(
                                    child: Text("Galleries",style: TextStyle(
                                      fontSize: 16,
                                    ),),
                                  ),
                                ),
                                Positioned(child: Container(height: 2,
                                  color: Colors.black,),
                                  left: 30,
                                  right: 30,
                                  bottom: 0,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Expanded(flex: 10, child: Placeholder()),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 16.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 72,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      _pageIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Container(
                          height: 2,
                          decoration: BoxDecoration(color:
                          _pageIndex == 0 ?
                          Colors.blue : Colors.transparent),
                        ),
                      ),
                      Icon(
                        Icons.home_outlined,
                        size: 38,
                        color: _pageIndex == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Library",
                        style: TextStyle(color: _pageIndex == 0 ? Colors.blue: Colors.grey),
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _pageIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: 2,
                              decoration: BoxDecoration(color:
                              _pageIndex == 1 ?
                              Colors.blue : Colors.transparent),
                            ),
                          ),
                          Icon(
                            Icons.apps_outlined,
                            size: 38,
                            color: _pageIndex == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            "Discover",
                            style: TextStyle(color: _pageIndex == 1 ? Colors.blue: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )),
              Expanded(child: Container()),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _pageIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: 2,
                              decoration: BoxDecoration(color:
                              _pageIndex == 2 ?
                              Colors.blue : Colors.transparent),
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            size: 38,
                            color: _pageIndex == 2 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            "Discover",
                            style: TextStyle(color: _pageIndex == 2 ? Colors.blue: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _pageIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: 2,
                              decoration: BoxDecoration(color:
                              _pageIndex == 3 ?
                              Colors.blue : Colors.transparent),
                            ),
                          ),
                          Icon(
                            Icons.apps_outlined,
                            size: 38,
                            color: _pageIndex == 3 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            "Discover",
                            style: TextStyle(color: _pageIndex == 3 ? Colors.blue: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
    );
  }
}
