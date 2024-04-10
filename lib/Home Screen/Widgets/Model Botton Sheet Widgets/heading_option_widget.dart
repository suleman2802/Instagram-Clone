import 'package:flutter/cupertino.dart';

class HeadingOptionWidget extends StatelessWidget {
  const HeadingOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CupertinoButton(
            child: circularWidget(
              context,
              CupertinoIcons.bookmark,
              "save",
            ),
            onPressed: null),
        CupertinoButton(
            child: circularWidget(
              context,
              CupertinoIcons.qrcode_viewfinder,
              "QR code",
            ),
            onPressed: null),
      ],
    );
  }
}

Widget circularWidget(
    BuildContext context, IconData iconData, String description) {
  return Column(
    children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          //color: CupertinoColors.activeGreen,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: CupertinoTheme.of(context).primaryColor,
          ),
        ),
        child: Icon(
          iconData,
          size: 35,
          color: CupertinoTheme.of(context).primaryColor,
        ),
      ),
      Text(
        description,
        style: TextStyle(
          color: CupertinoTheme.of(context).primaryColor,
        ),
      ),
    ],
  );
}
