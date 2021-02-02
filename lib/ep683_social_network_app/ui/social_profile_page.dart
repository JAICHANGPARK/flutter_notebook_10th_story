import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SocialProfilePage extends StatefulWidget {
  SocialProfilePage({Key key}) : super(key: key);

  @override
  _SocialProfilePageState createState() => _SocialProfilePageState();
}

class _SocialProfilePageState extends State<SocialProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          minHeight: MediaQuery.of(context).size.height / 3,
          body: Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              NetworkImage("https://cdn.pixabay.com/photo/2019/11/30/17/53/girl-4663792_960_720.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.darken))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                            Text(
                              "DREAMWALKER",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.more_horiz),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
              ),
              Positioned(
                  top: 360,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 72),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          child: Icon(Icons.send),
                        ),
                        CircleAvatar(
                          radius: 42,
                          backgroundColor: Theme.of(context).accentColor,
                          child: Icon(
                            Icons.favorite,
                            size: 38,
                          ),
                        ),
                        CircleAvatar(
                          radius: 24,
                          child: Icon(Icons.book),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
          backdropColor: Theme.of(context).cardColor,
          color: Theme.of(context).cardColor,
          panel: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Container(
                height: 3,
                width: 32,
                decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "#neon",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "#purple",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.purple,
                    ),
                    Text("159"),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.favorite,
                      size: 18,
                      color: Theme.of(context).accentColor,
                    ),
                    Text("124.6 k"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Comments(159)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text("by popular"),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wendy Darling",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "What a wonderful picture!",
                                style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.5)),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                      ],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
