import 'package:flutter/cupertino.dart';

import 'Widgets/Reels Widgets/reels_post_widget.dart';
class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ReelsPostWidget();
        },
      ),
    );
  }
}
