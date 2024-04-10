import 'package:flutter/cupertino.dart';

import './Widgets/profile_detail_widget.dart';
import './Widgets/profile_header_widget.dart';
import './Widgets/profile_button_widget.dart';
import './Widgets/Discover People Widgets/discover_people_widget.dart';
import './post_grid_widget.dart';

class ProfileScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsets.all(8.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      ProfileHeaderWidget(),
                      ProfileDetailWidget(),
                      SizedBox(height: 15),
                      ProfileButtonWidget(),
                      SizedBox(height: 15),
                      DiscoverPeopleWidget(),
                      SizedBox(height: 20,),
                      PostGridWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
