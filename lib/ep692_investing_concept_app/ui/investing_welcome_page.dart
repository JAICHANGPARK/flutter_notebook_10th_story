import 'package:flutter/material.dart';

class InvestingWelcomePage extends StatefulWidget {
  @override
  _InvestingWelcomePageState createState() => _InvestingWelcomePageState();
}

class _InvestingWelcomePageState extends State<InvestingWelcomePage> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    )),
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(icon: Icon(Icons.clear), onPressed: () {})
                      ],
                    ),
                    Text("Choose your interests to follow and trade"),
                    Text("on your terms."),
                    Container(
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue[50],
                          width: 1.2
                        )
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search interests to follow...",

                        ),
                      ),
                    )
                  ],
                ),
              ),
              top: 16,
              left: 0,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
