import 'package:flutter/cupertino.dart';


import '../Add Post Screen/add_post_screen.dart';
import '../Explore Screen/explore_screen.dart';
import '../Home Screen/home_screen.dart';
import '../Profile Screen/profile_screen.dart';
import '../Reels Screen/reels_screen.dart';





class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return HomeScreen();
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return ExploreScreen();
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return AddPostScreen();
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (context) {
                return ReelsScreen();
              },
            );
          case 4:
            return CupertinoTabView(
              builder: (context) {
                return ProfileScreen();
              },
            );
          default:
            return SizedBox();
        }
      },
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            // label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            // label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.add_circled),
            // label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.play_circle),
            // label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            // label: 'Home',
          ),
        ],
      ),
    );
  }
}
