import 'package:flutter/cupertino.dart';
import 'story_circle_widget.dart';
import './user_story_widget.dart';

class StoriesRowWidget extends StatelessWidget {
  const StoriesRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          UserStoryWidget(),
          StoryCircleWidget(),
          SizedBox(
            width: 7,
          ),
          StoryCircleWidget(),
          SizedBox(
            width: 7,
          ),
          StoryCircleWidget(),
          SizedBox(
            width: 7,
          ),
          StoryCircleWidget(),
          SizedBox(
            width: 7,
          ),
          StoryCircleWidget(),
        ],
      ),
    );
  }
}
