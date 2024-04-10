import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/General%20Widgets/profile_image_widget.dart';

class StoryCircleWidget extends StatelessWidget {
  const StoryCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 106,
          height: 106,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              begin: Alignment.center,
              // end: Alignment.topLeft,
              colors: [
                CupertinoColors.destructiveRed,
                CupertinoColors.systemPurple,
                CupertinoColors.destructiveRed,
                CupertinoColors.systemYellow,
              ],
            ),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 103,
                  height: 103,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                ProfileImageWidget(95),
              ],
            ),
          ),
        ),
        Text(
          "user name",
        )
      ],
    );
  }
}

//Alternative
// Container(
// height: 100,
// width: 100,
// decoration: BoxDecoration(
// color: Color.fromARGB(10, 20, 30, 40),
// borderRadius: BorderRadius.circular(50),
// ),
// child: Image.network("https://img.freepik.com/free-photo/fresh-autumn-leaves-reveal-vibrant-organic-pattern-generated-by-ai_188544-15037.jpg?size=626&ext=jpg&ga=GA1.1.1224184972.1711843200&semt=ais")
// );
