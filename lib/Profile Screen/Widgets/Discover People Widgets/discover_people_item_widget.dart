import 'package:flutter/cupertino.dart';

import '../../../General Widgets/profile_image_widget.dart';
class DiscoverPeopleItemWidget extends StatelessWidget {
  const DiscoverPeopleItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: CupertinoColors.opaqueSeparator,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProfileImageWidget(60),
          Text("profile name",style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,),
          //SizedBox(height: 10,),
          Text("Suggested for you"),
          //SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoButton(color: CupertinoColors.activeBlue,child: Text("Follow"), onPressed: () {}),
          ),
          //SizedBox(height: 10,),
        ],
      ),
    );
  }
}
