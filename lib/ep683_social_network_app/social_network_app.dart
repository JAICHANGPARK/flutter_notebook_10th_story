import 'package:flutter/material.dart';

import 'ui/social_network_feed_page.dart';

class SocialNetworkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        accentColor: Colors.yellow
      ),
      home: SocialNetworkFeedPage(),
    );
  }
}
