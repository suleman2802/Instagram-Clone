import 'package:flutter/cupertino.dart';

import '../Chat Screen/Widgets/chat_screen_header_widget.dart';
import '../General Widgets/Story Widgets/stories_row_widget.dart';
import './Widgets/messages_header_widget.dart';
import './Widgets/messages_list_widget.dart';

class DirectMessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            ChatScreenHeader(false),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: CupertinoSearchTextField(),
            ),
            StoriesRowWidget(),
            MessagesHeaderWidget(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                child: MessagesListWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
