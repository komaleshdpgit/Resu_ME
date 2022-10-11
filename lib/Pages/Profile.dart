import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Utilities/TextStyle.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/KomaleshImage.png'),
            radius: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              "Komalesh D. Patil",
              style: headerText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 7.0),
            child: Text(
              "B.Tech in Computer Engineering(2024)\n",
              style: subHeaderText,
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 330.0, maxHeight: 250.0),
            // color: Colors.blue,
            child: Text(
              "Computer Engineering student seeking to create and develop softwares aimed at social, local and innovational cause for the society.",
              style: bodyText,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 70.0,
                height: 80.0,
                child: FlatButton(
                  child: Image(image: AssetImage('assets/linkedin.png')),
                  onPressed: () => launch(
                      'https://www.linkedin.com/in/komalesh-patil-34a26b20b/'),
                ),
              ),
              Container(
                width: 70.0,
                height: 80.0,
                child: FlatButton(
                  child: Image(image: AssetImage('assets/github-modified.png')),
                  onPressed: () => launch('https://github.com/komaleshdpgit'),
                ),
              ),
              Container(
                  width: 70.0,
                  height: 80.0,
                  child: InkWell(
                    child: Icon(Icons.mail),
                    onTap: () {
                      launch('mailto: komaleshdpatil@gmail.com?');
                    },
                  )),
              Container(
                  width: 70.0,
                  height: 80.0,
                  child: InkWell(
                    child: Icon(Icons.phone),
                    onTap: () {
                      launch('tel: +91 9623269938');
                    },
                  )),
            ],
          )
        ],
      ),
    );
  }
}
