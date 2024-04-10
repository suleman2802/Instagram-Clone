import 'package:flutter/cupertino.dart';
import 'package:pull_down_button/pull_down_button.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PullDownButton(
          itemBuilder: (context) => [
            // PullDownMenuItem(
            //   title: 'Menu item',
            //   onTap: () {},
            // ),
            // // const PullDownMenuDivider(),
            // PullDownMenuItem(
            //   title: 'Menu item 2',
            //   onTap: () {},
            // ),
          ],
          buttonBuilder: (context, showMenu) => CupertinoButton(
            onPressed: showMenu,
            padding: EdgeInsets.zero,
            child: Row(
              children: [
                Text(
                  "profile name",
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .navLargeTitleTextStyle,
                ),
                Icon(
                  CupertinoIcons.chevron_down,
                  size: 13,
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            CupertinoButton(
                child: Icon(CupertinoIcons.add_circled), onPressed: () {}),
            CupertinoButton(
                child: Icon(CupertinoIcons.line_horizontal_3), onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
