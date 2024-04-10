import 'package:flutter/cupertino.dart';

import '../../../General Widgets/profile_image_widget.dart';
class BottomDetailsWidget extends StatelessWidget {
  String profileName;
  String description;
  String music;

  BottomDetailsWidget(@required this.profileName,@required this.description,@required this.music);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileImageWidget(50),
              SizedBox(
                width: 10,
              ),
              Text(
                profileName,
                style: CupertinoTheme
                    .of(context)
                    .textTheme
                    .navTitleTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                color: CupertinoColors.white.withAlpha(200),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              ' ♫ $music ',
            ),
          )
        ],
      ),
    );
  }
}
