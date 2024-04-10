import 'package:flutter/cupertino.dart';
import '../Add Post Screen/add_post_screen.dart';
import '../Direct Messages Screen/direct_messages_screen.dart';
import '../Explore Screen/explore_screen.dart';
import '../Navigation Screen/navigation_screen.dart';
import '../Home Screen/home_screen.dart';
import '../Profile Screen/profile_screen.dart';
import './routes_names.dart';

var routes = <String, WidgetBuilder>{
  intital: (context) => NavigationScreen(),
  homeScreen: (context) => HomeScreen(),
  exploreScreen: (context) => ExploreScreen(),
  profileScreen: (context) => ProfileScreen(),
  addPostScreen: (context) => AddPostScreen(),
  directMessagesScreen: (context) => DirectMessagesScreen(),
  messagesScreen: (context) => HomeScreen(), // remaining
  storyScreen: (context) => HomeScreen(), //remaining
};
