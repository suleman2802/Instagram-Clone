import 'package:flutter/cupertino.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      suffix: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.mic_solid,
              size: 40,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              CupertinoIcons.photo,
              size: 40,
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
      prefix: Icon(
        CupertinoIcons.camera_circle_fill,
        color: CupertinoColors.activeBlue,
        size: 50,
      ),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey5,
        borderRadius: BorderRadius.circular(20),
      ),
      placeholder: "Write a message ",
      padding: EdgeInsets.all(20),
    );
  }
}
