import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/General%20Widgets/profile_image_widget.dart';
import 'package:instagram_clone/Home%20Screen/home_screen.dart';

class ChatScreenHeader extends StatelessWidget {
  const ChatScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CupertinoButton(
                child: Icon(CupertinoIcons.arrow_left),
                onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => HomeScreen(),)),
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
                    style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
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
