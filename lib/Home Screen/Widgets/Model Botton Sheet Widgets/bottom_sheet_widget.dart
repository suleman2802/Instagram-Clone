import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './heading_option_widget.dart';
import './options_button_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.height * 0.54,
      //color: CupertinoColors.opaqueSeparator,
      child: Column(
        children: [
          Icon(
            CupertinoIcons.minus,
            size: 40,
          ),
          HeadingOptionWidget(),
          Divider(),
          SizedBox(height: 5,),
          OptionsButtonWidget("Add to favorites",CupertinoIcons.star),
          OptionsButtonWidget("Un follow",CupertinoIcons.person_badge_minus),
          SizedBox(height: 5,),
          Divider( ),
          SizedBox(height: 5,),
          OptionsButtonWidget("Why you're seeing this post ",CupertinoIcons.info_circle),
          OptionsButtonWidget("Hide",CupertinoIcons.eye_slash),
          OptionsButtonWidget("About this account",CupertinoIcons.profile_circled),
          SizedBox(height: 5,),
          Divider(),
          SizedBox(height: 5,),
          OptionsButtonWidget("Report",CupertinoIcons.exclamationmark_bubble),
        ],
      ),
    );
  }
}

