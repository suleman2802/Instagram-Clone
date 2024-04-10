import 'package:flutter/cupertino.dart';

import '../../../General Widgets/profile_image_widget.dart';

class UserStoryWidget extends StatelessWidget {
  const UserStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {},
      child: Column(
        children: [
          Stack(
            children: [
              ProfileImageWidget(100),
              Positioned(
                right: 1,
                bottom: 1,
                child: Icon(CupertinoIcons.add_circled_solid,
                    color: CupertinoColors.activeBlue),
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "profile name",
          ),
        ],
      ),
    );
  }
}
