import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Utilities/TextStyle.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Komalesh Patil",
            style: headerText,
          ),
          Text(
            "B.Tech(Comp.)",
            style: subHeaderText,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "SKILLS -",
              style: headerText,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: InkWell(
              child: Text("Front End Web dev", style: headerText),
              onTap: () => launch(
                  'https://www.bing.com/ck/a?!&&p=6de285faec3e8168JmltdHM9MTY2NTQ0NjQwMCZpZ3VpZD0yNjE4NmVjYS1hZmRlLTY5NzQtM2U5Yy03ZmRiYWU3MzY4MzkmaW5zaWQ9NTIxMA&ptn=3&hsh=3&fclid=26186eca-afde-6974-3e9c-7fdbae736839&psq=web+dev&u=a1aHR0cHM6Ly93d3cuZ2Vla3Nmb3JnZWVrcy5vcmcvd2ViLWRldmVsb3BtZW50Lw&ntb=1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              "Developing front end (The user end) of a website is one of the most "
              "exciting work I love to do.\n"
              "I have developed Front End part of 2/3 projects during the academic sessions",
              style: bodyText,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: InkWell(
              child: Text("Flutter", style: headerText),
              onTap: () => launch('https://flutter.dev/'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              "I have developed few apps with Flutter while learning it and also learnt very interesting feature "
              "provided by flutter  ",
              style: bodyText,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: InkWell(
              child: Text("Object Oriented Programming", style: headerText),
              onTap: () => launch(
                  'https://www.bing.com/ck/a?!&&p=572c9758797d111bJmltdHM9MTY2NTQ0NjQwMCZpZ3VpZD0yNjE4NmVjYS1hZmRlLTY5NzQtM2U5Yy03ZmRiYWU3MzY4MzkmaW5zaWQ9NTE5Nw&ptn=3&hsh=3&fclid=26186eca-afde-6974-3e9c-7fdbae736839&psq=OOP&u=a1aHR0cHM6Ly93d3cudHV0b3JpYWxzcG9pbnQuY29tL1doYXQtaXMtb2JqZWN0LW9yaWVudGVkLXByb2dyYW1taW5nLU9PUA&ntb=1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              "OOP (Object Oriented Programming) in C++ and Java have increased the productivity and efficiency"
              "of my programming and problem solving skills. ",
              style: bodyText,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: InkWell(
              child: Text("DBMS", style: headerText),
              onTap: () => launch(
                  'https://www.bing.com/ck/a?!&&p=a936d012bbd9a75eJmltdHM9MTY2NTQ0NjQwMCZpZ3VpZD0yNjE4NmVjYS1hZmRlLTY5NzQtM2U5Yy03ZmRiYWU3MzY4MzkmaW5zaWQ9NTI0Nw&ptn=3&hsh=3&fclid=26186eca-afde-6974-3e9c-7fdbae736839&psq=DBMS&u=a1aHR0cHM6Ly93d3cuZ3VydTk5LmNvbS93aGF0LWlzLWRibXMuaHRtbA&ntb=1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              "DBMS(Database Management System)helps in management of the data stored in servers.\n"
              "Developing a way to manage our data helped me to apply its knowledge in further projects.",
              style: bodyText,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: InkWell(
              child: Text("OS", style: headerText),
              onTap: () => launch(
                  'https://www.bing.com/ck/a?!&&p=ea0bd3e131d57f7bJmltdHM9MTY2NTQ0NjQwMCZpZ3VpZD0yNjE4NmVjYS1hZmRlLTY5NzQtM2U5Yy03ZmRiYWU3MzY4MzkmaW5zaWQ9NTI1OQ&ptn=3&hsh=3&fclid=26186eca-afde-6974-3e9c-7fdbae736839&psq=OS&u=a1aHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvT3BlcmF0aW5nX3N5c3RlbQ&ntb=1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              "Understanding the function of an OS(Operating System) helps to understand the backend working of processes and their responses"
              "to the functions we do on them. ",
              style: bodyText,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: InkWell(
              child: Text("Ethical Hacking", style: headerText),
              onTap: () => launch(
                  'https://en.wikipedia.org/wiki/Certified_Ethical_Hacker'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              "Security of any Software project or website is same as secruity of any locker with money"
              "I have completed my certified course in \"Ethical hacking\" from Internshala. ",
              style: bodyText,
            ),
          ),
        ],
      ),
    );
  }
}
