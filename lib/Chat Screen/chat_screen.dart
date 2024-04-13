import 'package:flutter/cupertino.dart';

import './Widgets/chat_screen_header_widget.dart';
import './Widgets/message_bubble.dart';
import './Widgets/text_field_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigationBar: CupertinoNavigationBar(
      //   padding: EdgeInsetsDirectional.zero,
      //   border: Border.all(
      //       color: CupertinoTheme.of(context).primaryColor
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
      //           ProfileImageWidget(50),
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
      //         CupertinoIcons.phone,
      //         //size: 35,
      //         //color: CupertinoTheme.of(context).primaryColor,
      //       ),
      //       onPressed: () {}),
      // ),
      child: SafeArea(
        child: Column(children: [
          ChatScreenHeader(true),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: ListView.builder(
                reverse: true,
                itemCount: 10,
                itemBuilder: (context, index) => MessageBubble(
                  true,
                  "hello",
                  ValueKey("p$index"),
                ),
              ),
            ),
          ),
          const TextFieldWidget(),
        ]),
      ),
    );
  }
}
