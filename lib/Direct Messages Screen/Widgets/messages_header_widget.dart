import 'package:flutter/cupertino.dart';

class MessagesHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Messages",
            style: CupertinoTheme.of(context)
                .textTheme
                .navTitleTextStyle,
          ),
          Text(
            "Requests",
            style: TextStyle(
              color: CupertinoColors.activeBlue,
            ),
          ),
        ],
      ),
    );
  }
}
