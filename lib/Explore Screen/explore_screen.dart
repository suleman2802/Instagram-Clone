import 'package:flutter/cupertino.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: SizedBox(height: 200,child: CupertinoSearchTextField()),
      ),
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
              "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png");
        },
      ),
    );
  }
}
