import 'package:flutter/material.dart';

class YogaHomePage extends StatefulWidget {
  @override
  _YogaHomePageState createState() => _YogaHomePageState();
}

class _YogaHomePageState extends State<YogaHomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      floating: true,
                      pinned: true,
                      snap: true,
                      expandedHeight: 200,
                      forceElevated: innerBoxIsScrolled,
                      backgroundColor: Colors.white,
                      actions: [],
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                        background: Column(
                          children: [
                            Container(
                              height: 64,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16, left: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Welcome Dream Walker",
                                      style: TextStyle(color: Colors.black, fontSize: 18),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        radius: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Container(
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Search Yoga",
                                      suffixIcon: Icon(
                                        Icons.search,
                                        size: 32,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      bottom: TabBar(
                          labelColor: Colors.orange,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.orange,
                          isScrollable: false,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          controller: _tabController,
                          tabs: [
                            Tab(
                              text: "Subscribed",
                            ),
                            Tab(
                              text: "Trending",
                            )
                          ]),
                    )
                  ];
                },
                body: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      // color: Colors.redAccent,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: CircleAvatar(
                                        radius: 36,
                                        backgroundImage: NetworkImage("https://thispersondoesnotexist.com/image"),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 10,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Dream Walker",
                                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "@Dreamwalker",
                                                  style: TextStyle(color: Colors.orange, fontSize: 16),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor: Colors.orange,
                                                ),
                                              )
                                            ],
                                          ),
                                          Text("Day 24 of the #YogaDecember"),
                                          Text("Challenge!"),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                            child: Container(
                                                height: 120,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange, borderRadius: BorderRadius.circular(16)),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                        right: 8,
                                                        top: 4,
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons.visibility,
                                                              size: 12,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Text(
                                                                "7.4k",
                                                                style: TextStyle(fontSize: 12),
                                                              ),
                                                            )
                                                          ],
                                                        )),
                                                    Positioned(
                                                        left: 8,
                                                        bottom: 4,
                                                        child: Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Text(
                                                                "5:00",
                                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                                              ),
                                                            )
                                                          ],
                                                        ))
                                                  ],
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    // Container(
                    //   color: Colors.green,
                    // )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 24,
              right: 24,
              bottom: 24,
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.home_outlined),
                            color: Colors.orange,
                            iconSize: 32,
                            onPressed: () {},
                          ),
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.add_chart),
                        color: Colors.black,
                        iconSize: 32,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.person_outline),
                        color: Colors.black,
                        iconSize: 32,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
