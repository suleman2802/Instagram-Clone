import 'package:flutter/cupertino.dart';
class ProfileButtonWidget extends StatelessWidget {
  const ProfileButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FittedBox(
        child: Row(
          children: [
            CupertinoButton(color: CupertinoColors.extraLightBackgroundGray,child: Text("Edit Profile",style: TextStyle(color: CupertinoTheme.of(context).primaryColor,fontWeight: FontWeight.bold),), onPressed: (){}),
            SizedBox(width: 5,),
            CupertinoButton(color: CupertinoColors.extraLightBackgroundGray,child: Text("Share Profile",style: TextStyle(color: CupertinoTheme.of(context).primaryColor,fontWeight: FontWeight.bold),), onPressed: (){}),
            SizedBox(width: 5,),
            CupertinoButton(color: CupertinoColors.extraLightBackgroundGray,child: Icon(CupertinoIcons.person_add_solid,color: CupertinoTheme.of(context).primaryColor,), onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
