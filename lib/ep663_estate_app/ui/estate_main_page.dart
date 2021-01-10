import 'package:flutter/material.dart';

class EstateMainPage extends StatefulWidget {
  @override
  _EstateMainPageState createState() => _EstateMainPageState();
}

class _EstateMainPageState extends State<EstateMainPage> {
  final Color appColor = Color(0xff223444);
  int searchTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: const EdgeInsets.all(8.0),
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
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            searchTabIndex = 0;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "House Buy",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.2),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4,),
                            Container(width: 100, height: 3, color:
                            searchTabIndex == 0 ?
                            Colors.deepOrange :Colors.transparent)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2.3,
          ),
          Positioned(
            child: Placeholder(),
            top: MediaQuery.of(context).size.height / 2.8,
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
                    border: Border.all(color: Colors.indigo, width: 3), borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 32,
                    color: Colors.indigo,
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
