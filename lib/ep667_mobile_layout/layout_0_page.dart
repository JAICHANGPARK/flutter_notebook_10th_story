import 'package:flutter/material.dart';
import 'mobile_layout_app.dart';

class Layout0Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mobileLayoutAppColor,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 58,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Attica",
                      style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white, thickness: 1, height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Crete",
                      style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white, thickness: 1, height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Thessaly",
                      style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white, thickness: 1, height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "W.Greece",
                      style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white, thickness: 1, height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Epirus",
                      style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white, thickness: 1, height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mount Athos",
                      style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "asd",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.white, thickness: 1, height: 8,),
              Center(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {  },
                      child: Text("See all", style: TextStyle(
                        color: Colors.white
                      ),),

                    ),
                    Icon(Icons.arrow_forward, size: 18,)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
