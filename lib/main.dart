import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/Add%20Post%20Screen/add_post_screen.dart';
import 'package:instagram_clone/Direct%20Messages%20Screen/direct_messages_screen.dart';
import 'package:instagram_clone/Explore%20Screen/explore_screen.dart';
import 'package:instagram_clone/Home%20Screen/home_screen.dart';
import 'package:instagram_clone/Profile%20Screen/profile_screen.dart';

import '../Navigation Screen/navigation_screen.dart';
import '../Routes/routes_names.dart';
import '../Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.black,
        textTheme: CupertinoTextThemeData(
          navLargeTitleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          navTitleTextStyle: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      // routes: {
      //   intital: (context) => NavigationScreen(),
      //   homeScreen: (context) => HomeScreen(),
      //   exploreScreen: (context) => ExploreScreen(),
      //   profileScreen: (context) => ProfileScreen(),
      //   addPostScreen: (context) => AddPostScreen(),
      //   directMessagesScreen: (context) => DirectMessagesScreen(),
      //   messagesScreen: (context) => HomeScreen(), // remaining
      //   storyScreen: (context) => HomeScreen(),
      // },
      // onGenerateRoute: (RouteSettings settings) {
      //   switch (settings.name) {
      //     case intital:
      //       return CupertinoPageRoute(
      //           builder: (_) => NavigationScreen(), settings: settings);
      //     case homeScreen:
      //       return CupertinoPageRoute(
      //           builder: (_) => HomeScreen(), settings: settings);
      //     case exploreScreen:
      //       return CupertinoPageRoute(
      //           builder: (_) => ExploreScreen(), settings: settings);
      //     case profileScreen:
      //       return CupertinoPageRoute(
      //           builder: (_) => ProfileScreen(), settings: settings);
      //     case addPostScreen:
      //       return CupertinoPageRoute(
      //           builder: (_) => AddPostScreen(), settings: settings);
      //     case directMessagesScreen:
      //       return CupertinoPageRoute(
      //           builder: (_) => DirectMessagesScreen(), settings: settings);
      //   }
      //   return null;
      // },
      //
      home: NavigationScreen(),
    );
  }
}
