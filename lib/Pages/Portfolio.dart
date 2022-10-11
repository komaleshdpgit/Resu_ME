import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Utilities/TextStyle.dart';
import '../Utilities/colors.dart';
import '../main.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Portfolio",
              style: headerText,
            ),
            Container(
              child: Text(
                  "The scientist discovers a new type of material or energy and the engineer discovers a new use for it.” — Gordon Lindsay Glegg\n"
                  "Developing and implementing different innovative ideas is what makes us an Engineer.Here are few of my projects"
                  "that I have worked upon ",
                  style: bodyText),
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
            ),
            Row(
              children: <Widget>[
                _itemWidget(
                    "Virtual Workout Trainer",
                    'https://github.com/komaleshdpgit/virtualWorkoutTrainer',
                    width),
                _itemWidget(
                    "2",
                    'https://www.geeksforgeeks.org/flutter-inkwell-widget/',
                    width),
                _itemWidget(
                    "3",
                    'https://www.geeksforgeeks.org/flutter-inkwell-widget/',
                    width),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _itemWidget(Title, link, width) {
  return Expanded(
    flex: 1,
    child: InkWell(
      onTap: () {
        scaffoldkey.currentState!.showBottomSheet((context) {
          return Container(
            color: backgroundLight,
            width: width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 250,
                  alignment: Alignment.center,
                  child: FlatButton(
                    child: Text(Title),
                    onPressed: () => launch(link),
                    minWidth: width,
                    height: 200.0,
                  ),
                ),
                Text(
                  "Project Name",
                  style: subHeaderText,
                ),
                Text(
                  "Virtual Workout Trainer is a web app developed to detect the perfect body posture of a "
                  "person performing the trained exercises.\n"
                  "This app is bases on Javascript and posenet model of ml5.js",
                  style: bodyText,
                )
              ],
            ),
          );
        });
      },
      child: Container(
        margin: EdgeInsets.all(3),
        height: 100,
        color: cardBGColor,
        child: Text(Title),
        alignment: Alignment.center,
      ),
    ),
  );
}
