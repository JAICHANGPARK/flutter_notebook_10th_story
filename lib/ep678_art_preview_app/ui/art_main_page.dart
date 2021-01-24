import 'package:flutter/material.dart';

class ArtMainPage extends StatefulWidget {
  ArtMainPage({Key key}) : super(key: key);

  @override
  _ArtMainPageState createState() => _ArtMainPageState();
}

class _ArtMainPageState extends State<ArtMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text("Browse"),
                                  ),
                                ),
                                Positioned(child: Container(height: 2,
                                color: Colors.black,),
                                left: 24,
                                right: 24,
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text("Browse"),
                                  ),
                                ),
                                Positioned(child: Container(height: 2,
                                  color: Colors.black,),
                                  left: 24,
                                  right: 24,
                                  bottom: 0,)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 32,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent[100],
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text("Browse"),
                                ),
                              ),
                              Positioned(child: Container(height: 2,
                                color: Colors.black,),
                                left: 24,
                                right: 24,
                                bottom: 0,)
                            ],
                          ),
                        )
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Icon(
                      Icons.home_outlined,
                      size: 38,
                      color: Colors.blue,
                    ),
                    Text(
                      "Library",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Icon(
                      Icons.home_outlined,
                      size: 38,
                      color: Colors.blue,
                    ),
                    Text(
                      "Library",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              )),
              Expanded(child: Container()),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Icon(
                      Icons.home_outlined,
                      size: 38,
                      color: Colors.blue,
                    ),
                    Text(
                      "Library",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Icon(
                      Icons.home_outlined,
                      size: 38,
                      color: Colors.blue,
                    ),
                    Text(
                      "Library",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
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
