import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/Direct%20Messages%20Screen/direct_messages_screen.dart';
import 'package:pull_down_button/pull_down_button.dart';
import '../Routes/routes_names.dart';

class HeaderWidget extends StatelessWidget {
  bool isHome;

  HeaderWidget(this.isHome);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PullDownButton(
          itemBuilder: (context) => [
            PullDownMenuItem(
              title: 'Following',
              onTap: () {},
            ),
            // const PullDownMenuDivider(),
            PullDownMenuItem(
              title: 'Favorites',
              onTap: () {},
            ),
          ],
          buttonBuilder: (context, showMenu) => CupertinoButton(
            onPressed: showMenu,
            padding: EdgeInsets.zero,
            child: Row(
              children: [
                Text(
                  isHome ? " Instagram" : " Reels",
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
        isHome
            ? Row(
                children: [
                  CupertinoButton(
                      child: Icon(CupertinoIcons.heart), onPressed: () {}),
                  CupertinoButton(
                    child: Icon(CupertinoIcons.location_fill),
                    onPressed: () => Navigator.of(context).pushReplacement(
                        CupertinoPageRoute(
                            builder: (context) => DirectMessagesScreen())),

                    // => Navigator.push(context,context CupertinoPageRoute(builder: (context) => DirectMessagesScreen(),)),
                    // => Navigator.pushNamed(context,"./directMessagesScreen",arguments: null ),
                  ),
                ],
              )
            : CupertinoButton(
                child: Icon(CupertinoIcons.camera), onPressed: () {}),
      ],
    );
  }
}
