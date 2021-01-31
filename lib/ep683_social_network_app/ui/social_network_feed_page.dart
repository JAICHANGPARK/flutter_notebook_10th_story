import 'package:flutter/material.dart';
import 'package:flutter_notebook_10th_story/ep683_social_network_app/ui/social_profile_page.dart';

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
            Expanded(
                flex: 3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2018/03/12/20/57/portrait-3220832__340.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken))),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SocialProfilePage()));
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0.32),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage("https://cdn.pixabay.com/photo/2017/04/21/21/45/dj-2250056__340.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken))),
                    ),
                    Container(
                      width: 100,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage("https://cdn.pixabay.com/photo/2019/12/17/04/53/neon-4700730__340.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              right: 8,
                              top: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      "LIVE",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/16/00/10/dj-2147859__340.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken))),
                    ),
                    Container(
                      width: 100,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image:
                                  NetworkImage("https://cdn.pixabay.com/photo/2019/12/17/04/52/neon-4700726__340.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken))),
                    ),
                  ],
                )),
            //Tab
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 1.2),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8, left: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor, borderRadius: BorderRadius.circular(24)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 24),
                                    child: Center(
                                      child: Text(
                                        "Friends",
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                            return Padding(
                              padding: const EdgeInsets.only(right: 8, left: 8),
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(24)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24),
                                  child: Center(
                                    child: Text(
                                      "Videos",
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )),
                  ],
                )),
            //Feed
            Expanded(
                flex: 9,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SocialProfilePage()));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.pink,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jake Hicks"),
                                Text("U.K"),
                              ],
                            ),
                          ),
                          Spacer(),
                          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
                        ],
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2019/12/17/04/52/neon-4700726__340.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 16,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "4.6k",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.favorite_border)
                                  ],
                                ),
                                Spacer(),
                                Text("MODEL"),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "UNKNOWN NAME,",
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      flex: 10,
                    ),
                  ],
                )),
            //Botttom
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _tabIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Notification"),
                          _tabIndex == 0
                              ? CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Theme.of(context).accentColor,
                                )
                              : Container()
                        ],
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _tabIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Home"),
                          _tabIndex == 1
                              ? CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Theme.of(context).accentColor,
                                )
                              : Container()
                        ],
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _tabIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Messages"),
                          _tabIndex == 2
                              ? CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Theme.of(context).accentColor,
                                )
                              : Container()
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
