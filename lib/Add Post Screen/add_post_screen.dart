import 'package:flutter/cupertino.dart';
class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      // navigationBar: CupertinoNavigationBar(
      //   middle: CupertinoSearchTextField(),
      // ),
      child: Center(
        child: Text('AddPostScreen'),
      ),
    );
  }
}
