import 'package:flutter/cupertino.dart';

import '../../General Widgets/profile_image_widget.dart';
class ProfileDetailWidget extends StatelessWidget {
  const ProfileDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            ProfileImageWidget(75),
            Text("profile name",style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,),
          ],
        ),
        SizedBox(width: 40,),
        profileDetailWidget(context,"95", "posts"),
        profileDetailWidget(context,"1.1k", "followers"),
        profileDetailWidget(context,"1k", "following"),
      ],
    );
  }
  Widget profileDetailWidget(BuildContext context, String numbers , String title){
    return Column(
      children: [
        Text(numbers,style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,),
        Text(title),
      ],
    );
  }
}
