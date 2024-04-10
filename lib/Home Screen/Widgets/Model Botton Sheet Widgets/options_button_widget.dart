import 'package:flutter/cupertino.dart';
class OptionsButtonWidget extends StatelessWidget {
  String title;
  IconData iconData;
  OptionsButtonWidget(this.title,this.iconData);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData),
        SizedBox(width: 5,),
        Text(title),
      ],
    );
  }
}
