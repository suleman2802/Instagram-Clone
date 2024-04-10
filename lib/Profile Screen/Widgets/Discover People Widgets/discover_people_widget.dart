import 'package:flutter/cupertino.dart';

import './discover_people_item_widget.dart';

class DiscoverPeopleWidget extends StatelessWidget {
  const DiscoverPeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Discover People ",
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            CupertinoButton(
                child: Text(
                  "view all",
                  style: TextStyle(color: CupertinoColors.activeBlue),
                ),
                onPressed: () {}),
          ],
        ),
        SizedBox(
          height: 270,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Row(
                    children: [
                      DiscoverPeopleItemWidget(),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  )),
        ),
      ],
    );
  }
}
