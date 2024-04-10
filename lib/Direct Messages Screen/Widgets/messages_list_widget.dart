import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/Chat%20Screen/chat_screen.dart';

import '../../General Widgets/profile_image_widget.dart';

class MessagesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) => CupertinoListTile(
        leadingSize: 75,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        title: Text(
          "profile name",
          style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
        ),
        leading: ProfileImageWidget(70),
        trailing: CupertinoButton(
          child: Icon(CupertinoIcons.camera),
          onPressed: () {},
        ),
        onTap: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => ChatScreen(),
            )),
      ),
    );
  }
}
