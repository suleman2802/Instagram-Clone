import 'package:flutter/cupertino.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// import 'package:flutter/material.dart' hide showBarModalBottomSheet;
import 'Model Botton Sheet Widgets/bottom_sheet_widget.dart';

import '../../General Widgets/profile_image_widget.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}
//logic for video post seprate out each widget and use if else to call accordingly
//if is video stack ka widget ma just ko call karlo, otherwise stack na banayao or call karlo just
class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 2, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ProfileImageWidget(50),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "profile name",
                    style:
                        CupertinoTheme.of(context).textTheme.navTitleTextStyle,
                  ),
                ],
              ),
              CupertinoButton(
                  child: Icon(CupertinoIcons.ellipsis_vertical),
                  onPressed: () {
                    showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => BottomSheetWidget(),
                    );
                  }),
            ],
          ),
        ),
        Container(
          color: CupertinoColors.destructiveRed,
          //height: 450,
          height: MediaQuery.of(context).size.height * 0.55,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CupertinoButton(
                  onPressed: () {},
                  child: Icon(CupertinoIcons.heart),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Icon(CupertinoIcons.chat_bubble),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.location,
                  ),
                ),
              ],
            ),
            CupertinoButton(
              onPressed: () {},
              child: Icon(
                CupertinoIcons.bookmark,
              ),
            ),
          ],
        ),
        postFooterWidget(
            context, 98, "profile name", "description .......", 12),
      ],
    );
  }
}

Widget postFooterWidget(BuildContext context, int likes, String profileName,
    String postDescription, int comments) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$likes likes"),
        Row(
          children: [
            Text(
              profileName,
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              postDescription,
            ),
          ],
        ),
        CupertinoButton(
          child: Text(
            "View all $comments comments",
          ),
          onPressed: () {},
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProfileImageWidget(27),
            SizedBox(
              width: 5,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: CupertinoTextField(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: CupertinoColors.white,
                )),
                placeholder: 'Add a comment',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
