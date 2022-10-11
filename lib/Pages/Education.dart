import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Utilities/TextStyle.dart';
import '../Utilities/colors.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 30),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
              child: Text(
                "Education",
                style: headerText,
              ),
            ),
            _itemWidget("May 2024", "B.Tech- VIT,Pune", "https://www.vit.edu/",
                "Pursuing Bachelors of Technology in Computer Engineering from VIT, Pune , with CGPA of 8.62. "),
            _itemWidget(
                " April 2020",
                "HSC- P.R.Society's ACS College ",
                "https://acscdharangaon.in/",
                "Completed my HSC(12th) in Science from ACS college Dharangaon with 82.92% in HSC exam and 98.85 percentile in MHTCET(PCM).  "),
            _itemWidget(
                " May 2018",
                "AISSE - ST.Joseph's Convent School,Jalgaon",
                "http://www.stjosephconventjalgaon.org/",
                "Completed my 10th from ST. Joseph's Convent School Jalgaon with 88.40% in AISSE."),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(title, EduTitle, Titlelink, description) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              Text(
                title,
                style: subHeaderText,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 6, top: 10),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 2, color: Colors.grey))),
            // child: InkWell(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: cardBGColor),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => launch(Titlelink),
                    child: Text(
                      EduTitle,
                      style: headerText,
                    ),
                  ),
                  Container(
                    child: Text(
                      description,
                      style: bodyText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // )
        ],
      ),
    );
  }
}
