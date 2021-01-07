import 'package:flutter/material.dart';

class WalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalletAppHomePage(),
    );
  }
}

class WalletAppHomePage extends StatefulWidget {
  @override
  _WalletAppHomePageState createState() => _WalletAppHomePageState();
}

class _WalletAppHomePageState extends State<WalletAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7e9f2),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "\$ 101,080.00",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.info_outline),
                          ),
                          Icon(Icons.search),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            "History from",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "All accounts",
                            style: TextStyle(
                              color: Colors.purple[300],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.purple[300],
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 3),
                        decoration: BoxDecoration(color: Colors.blueGrey[100]),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Center(
                          child: Text("Only Me"),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(flex: 5, child: Placeholder()),
            Expanded(flex: 6, child: Placeholder()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Color(0xffaebec1),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
              ),
              label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: "Transfers"),
          BottomNavigationBarItem(icon: Icon(Icons.request_page), label: "Requests"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Cards"),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "More"),
        ],
      ),
    );
  }
}