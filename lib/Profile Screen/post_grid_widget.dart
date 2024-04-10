import 'package:flutter/cupertino.dart';

class PostGridWidget extends StatelessWidget {
  List<String> widgetList = ['Geeks', 'for', 'Geeks',"hello"];
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    //final double itemHeight = (size.height - 550) / 3;
   // final double itemWidth = (size.width - 40) / 4;
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        //childAspectRatio: (itemWidth / itemHeight),
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: widgetList.map((String value) {
          return Container(
            color: CupertinoColors.black,
            margin: EdgeInsets.all(1.0),
            child: Center(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
