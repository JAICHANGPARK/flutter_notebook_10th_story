import 'package:flutter/material.dart';

class SocialNetworkFeedPage extends StatefulWidget {
  @override
  _SocialNetworkFeedPageState createState() => _SocialNetworkFeedPageState();
}

class _SocialNetworkFeedPageState extends State<SocialNetworkFeedPage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person_outline,
                    ),
                    Text(
                      "FEED",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                )),
            //Live
            Expanded(flex: 3, child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2018/03/12/20/57/portrait-3220832__340.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2 ), BlendMode.darken)
                    )
                  ),
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.5),
                    ),
                  ),
                )
              ],
            )),
            //Tab
            Expanded(flex: 3, child: Placeholder()),
            //Feed
            Expanded(flex: 8, child: Placeholder()),
            //Botttom
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _tabIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Notification"),
                          _tabIndex == 0 ?  CircleAvatar(radius: 4,
                            backgroundColor: Theme.of(context).accentColor,) : Container()
                        ],
                      ),
                    )),
                    Expanded(child: GestureDetector( onTap: (){
                      setState(() {
                        _tabIndex = 1;
                      });
                    },
                      child: Column(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Home"),
                          _tabIndex == 1 ?  CircleAvatar(radius: 4,
                            backgroundColor: Theme.of(context).accentColor,) : Container()
                        ],
                      ),
                    )),
                    Expanded(child: GestureDetector( onTap: (){
                      setState(() {
                        _tabIndex = 2;
                      });
                    },
                      child: Column(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Messages"),
                          _tabIndex == 2 ?  CircleAvatar(radius: 4,
                            backgroundColor: Theme.of(context).accentColor,) : Container()
                        ],
                      ),
                    )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
