import 'package:flutter/cupertino.dart';

import '../../../General Widgets/header_widget.dart';

import './side_action_widget.dart';
import './bottom_details_widget.dart';

class ReelsPostWidget extends StatelessWidget {
  const ReelsPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: CupertinoColors.destructiveRed,
          //height: 450,
          height: MediaQuery.of(context).size.height * 0.88,
        ),
        HeaderWidget(false),
        Positioned(
          bottom: 0.5,
          //left: 5,
          child: BottomDetailsWidget("profile name", "description ......",
              'demo/music "heelo the wonder music "'),
        ),
        Positioned(
          right: 1,
          bottom: 10,
          child: SideActionWidget("167 k", "97 k", "85"),
        ),
      ],
    );
  }
}
