import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/Chat%20Screen/Widgets/chat_screen_header_widget.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../General Widgets/Story Widgets/stories_row_widget.dart';
import './Widgets/messages_header_widget.dart';
import './Widgets/messages_list_widget.dart';

class DirectMessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigationBar: CupertinoNavigationBar(
      //    padding: EdgeInsetsDirectional.zero,
      //   border: Border.all(
      //     color: CupertinoTheme.of(context).primaryColor
      //   ),
      //   backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
      //   middle: PullDownButton(
      //     itemBuilder: (context) => [
      //       PullDownMenuItem(
      //         title: 'Menu item',
      //         onTap: () {},
      //       ),
      //       // const PullDownMenuDivider(),
      //       PullDownMenuItem(
      //         title: 'Menu item 2',
      //         onTap: () {},
      //       ),
      //     ],
      //     buttonBuilder: (context, showMenu) => CupertinoButton(
      //       onPressed: showMenu,
      //       padding: EdgeInsets.zero,
      //       child: Row(
      //         children: [
      //           Text(
      //             "profile name",
      //             style: CupertinoTheme.of(context)
      //                 .textTheme
      //                 .navLargeTitleTextStyle,
      //           ),
      //           Icon(
      //             CupertinoIcons.chevron_down,
      //             size: 18,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   trailing: CupertinoButton(
      //       child: Icon(
      //         CupertinoIcons.video_camera,
      //        // size: 30,
      //         //color: CupertinoTheme.of(context).primaryColor,
      //       ),
      //       onPressed: () {}),
      // ),
      child: SafeArea(
        child: Column(
          children: [
            ChatScreenHeader(),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: CupertinoSearchTextField(),
            ),
            StoriesRowWidget(),
            MessagesHeaderWidget(),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                child: MessagesListWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
