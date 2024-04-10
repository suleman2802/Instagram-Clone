import 'package:flutter/cupertino.dart';

class SideActionWidget extends StatelessWidget {
  String likes;
  String comments;
  String shared;

  SideActionWidget(@required this.likes,@required this.comments,@required this.shared);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
            child: Icon(
              CupertinoIcons.heart,
              color: CupertinoTheme.of(context).scaffoldBackgroundColor,
            ),
            onPressed: null),
        Text(likes),
        CupertinoButton(
            child: Icon(
              CupertinoIcons.conversation_bubble,
              color: CupertinoTheme.of(context).scaffoldBackgroundColor,
            ),
            onPressed: null),
        Text(comments),
        CupertinoButton(
            child: Icon(
              CupertinoIcons.location,
              color: CupertinoTheme.of(context).scaffoldBackgroundColor,
            ),
            onPressed: null),
        Text(shared),
        CupertinoButton(
            child: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: CupertinoTheme.of(context).scaffoldBackgroundColor,
            ),
            onPressed: null),
      ],
    );
  }
}
