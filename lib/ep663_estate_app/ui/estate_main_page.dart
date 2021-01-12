import 'package:flutter/material.dart';

class EstateMainPage extends StatefulWidget {
  @override
  _EstateMainPageState createState() => _EstateMainPageState();
}

class _EstateMainPageState extends State<EstateMainPage> with TickerProviderStateMixin {
  final Color appColor = Color(0xff223444);
  int searchTabIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: appColor, // 34 52 68  ==> 22 34 44
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            // 96 99 126  60 63 7E
                            color: Color(0xff60637e),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.apps_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              searchTabIndex = 0;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "House Buy",
                                style: TextStyle(
                                  color: searchTabIndex == 0 ? Colors.deepOrange : Colors.white.withOpacity(0.2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                  width: 96,
                                  height: 3,
                                  color: searchTabIndex == 0 ? Colors.deepOrange : Colors.transparent)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              searchTabIndex = 1;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "House Rent",
                                style: TextStyle(
                                  color: searchTabIndex == 1 ? Colors.deepOrange : Colors.white.withOpacity(0.2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                  width: 100,
                                  height: 3,
                                  color: searchTabIndex == 1 ? Colors.deepOrange : Colors.transparent)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: Container(
                            height: 52,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.only(left: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.search), hintText: "Search Properties...", border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.tune,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2.2,
          ),
          Positioned(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 2.4,
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Browse Properties",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TabBar(
                                controller: _tabController,
                                labelColor: Colors.deepOrange,
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorColor: Colors.deepOrange,
                                indicatorWeight: 3,
                                isScrollable: true,
                                unselectedLabelColor: Colors.grey,
                                onTap: (tabIdx) {},
                                tabs: [
                                  Tab(
                                    text: "Homes",
                                  ),
                                  Tab(
                                    text: "Plots",
                                  ),
                                  Tab(
                                    text: "Commercial",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              SizedBox(
                                height: 180,
                                child: Container(
                                  child: TabBarView(controller: _tabController, children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Popular",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              "Type",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              "Location",
                                              style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Area Size",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Container(
                                          height: 140,
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: GridView.count(
                                            crossAxisCount: 3,
                                            shrinkWrap: true,
                                            childAspectRatio: 1.6,
                                            mainAxisSpacing: 8,
                                            crossAxisSpacing: 8,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Johar Town Phase 1",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Rolwind Road",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Alla lqbal Town",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Johar Town Phase 1",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Wapda Town",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text("Cantt city"),
                                                )),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text("Center 1 "),
                                      ),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text("Center 2"),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2.4,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Popular Properties",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            top: MediaQuery.of(context).size.height / 3.1,
            left: 0,
            right: 0,
            bottom: 0,
          ),
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 76,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.home_outlined),
                      onPressed: () {},
                      iconSize: 28,
                      color: Colors.orange,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.orange, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.chat_outlined),
                      onPressed: () {},
                      iconSize: 28,
                    ),
                    Text(
                      "Chat",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    border: Border.all(color: appColor, width: 3), borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 32,
                    color: appColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                      iconSize: 28,
                    ),
                    Text(
                      "Save",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.person_outline),
                      onPressed: () {},
                      iconSize: 28,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
