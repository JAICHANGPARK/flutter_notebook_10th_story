import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep678_art_preview_app/model/art.dart';
import 'package:flutter_notebook_10th_story/ep678_art_preview_app/ui/art_detail_page.dart';

class ArtMainPage extends StatefulWidget {
  ArtMainPage({Key key}) : super(key: key);

  @override
  _ArtMainPageState createState() => _ArtMainPageState();
}

class _ArtMainPageState extends State<ArtMainPage> {
  int _tabIndex = 0;
  int _pageIndex = 0;

  List<Art> artItems = [
    Art(
        img: "https://cdn.pixabay.com/photo/2017/11/20/02/00/fantasy-2964231_960_720.jpg",
        name: "Abstract",
        detail: "by Dreamwalker\nResin on Canvas",
        isFeature: true,
        height: "36",
        width: "48"),
    Art(
        img: "https://cdn.pixabay.com/photo/2018/02/06/22/43/painting-3135875_960_720.jpg",
        name: "Abstract",
        detail: "by Dreamwalker\n Oil on Canvas",
        isFeature: false,
        height: "36",
        width: "48"),
    Art(
        img: "https://cdn.pixabay.com/photo/2018/03/24/08/56/color-3256055_960_720.jpg",
        name: "Abstract",
        detail: "by Dreamwalker\n Oil on Canvas",
        isFeature: false,
        height: "36",
        width: "48"),
    Art(
        img: "https://cdn.pixabay.com/photo/2017/06/03/20/12/art-2369664_960_720.jpg",
        name: "Abstract",
        detail: "by Dreamwalker\n Oil on Canvas",
        isFeature: true,
        height: "36",
        width: "48"),
  ];

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
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _tabIndex = 0;
                              });
                            },
                            child: Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: _tabIndex == 0 ? Colors.blueAccent[100] : Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child: Center(
                                      child: Text(
                                        "Browse",
                                        style:
                                            TextStyle(fontSize: 16, color: _tabIndex == 0 ? Colors.black : Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      height: 2,
                                      color: _tabIndex == 0 ? Colors.black : Colors.transparent,
                                    ),
                                    left: 30,
                                    right: 30,
                                    bottom: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _tabIndex = 1;
                              });
                            },
                            child: Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: _tabIndex == 1 ? Colors.blueAccent[100] : Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child: Center(
                                      child: Text(
                                        "Artists",
                                        style:
                                            TextStyle(fontSize: 16, color: _tabIndex == 1 ? Colors.black : Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      height: 2,
                                      color: _tabIndex == 1 ? Colors.black : Colors.transparent,
                                    ),
                                    left: 30,
                                    right: 30,
                                    bottom: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _tabIndex = 2;
                              });
                            },
                            child: Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: _tabIndex == 2 ? Colors.blueAccent[100] : Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child: Center(
                                      child: Text(
                                        "Galleries",
                                        style:
                                            TextStyle(fontSize: 16, color: _tabIndex == 2 ? Colors.black : Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      height: 2,
                                      color: _tabIndex == 2 ? Colors.black : Colors.transparent,
                                    ),
                                    left: 30,
                                    right: 30,
                                    bottom: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Expanded(
              flex: 10,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 160,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Hero(
                          tag:artItems[index].name,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage(artItems[index].img), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: artItems[index].isFeature
                                ? Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(vertical: 4),
                                          decoration: BoxDecoration(
                                              color: Colors.blue[200], borderRadius: BorderRadius.circular(4)),
                                          child: Center(
                                              child: Text(
                                            "FEATURED",
                                            style: TextStyle(color: Colors.white),
                                          )),
                                        ),
                                        bottom: 8,
                                        left: 12,
                                        right: 12,
                                      )
                                    ],
                                  )
                                : null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(artItems[index].name, style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              Text(artItems[index].detail),
                              Row(
                                children: [
                                  Container(
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[400],
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${artItems[index].height} x ${artItems[index].width} inch"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(icon: Icon(Icons.arrow_forward_ios_outlined), onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                          ArtDetailPage(
                            art: artItems[index],
                          )));

                        })
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemCount: artItems.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 16.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: GestureDetector(
                  onTap: () {
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
                          decoration: BoxDecoration(color: _pageIndex == 0 ? Colors.blue : Colors.transparent),
                        ),
                      ),
                      Icon(
                        Icons.home_outlined,
                        size: 38,
                        color: _pageIndex == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Library",
                        style: TextStyle(color: _pageIndex == 0 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: GestureDetector(
                  onTap: () {
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
                          decoration: BoxDecoration(color: _pageIndex == 1 ? Colors.blue : Colors.transparent),
                        ),
                      ),
                      Icon(
                        Icons.apps_outlined,
                        size: 38,
                        color: _pageIndex == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Discover",
                        style: TextStyle(color: _pageIndex == 1 ? Colors.blue : Colors.grey),
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
                  onTap: () {
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
                          decoration: BoxDecoration(color: _pageIndex == 2 ? Colors.blue : Colors.transparent),
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        size: 38,
                        color: _pageIndex == 2 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Feed",
                        style: TextStyle(color: _pageIndex == 2 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: GestureDetector(
                  onTap: () {
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
                          decoration: BoxDecoration(color: _pageIndex == 3 ? Colors.blue : Colors.transparent),
                        ),
                      ),
                      Icon(
                        Icons.settings,
                        size: 38,
                        color: _pageIndex == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(color: _pageIndex == 3 ? Colors.blue : Colors.grey),
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
