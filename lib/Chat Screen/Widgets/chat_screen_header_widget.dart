import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/Direct%20Messages%20Screen/direct_messages_screen.dart';

import '../../General Widgets/profile_image_widget.dart';
import '../../Home Screen/home_screen.dart';

class ChatScreenHeader extends StatelessWidget {
  bool isChatScreen;

  ChatScreenHeader(this.isChatScreen);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CupertinoButton(
                child: Icon(CupertinoIcons.arrow_left),
                onPressed: () => Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) =>
                        isChatScreen ? DirectMessagesScreen() : HomeScreen(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileImageWidget(50),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "profile name",
                    style:
                        CupertinoTheme.of(context).textTheme.navTitleTextStyle,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              CupertinoButton(
                  child: Icon(CupertinoIcons.phone), onPressed: () {}),
              CupertinoButton(
                child: Icon(CupertinoIcons.videocam),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
