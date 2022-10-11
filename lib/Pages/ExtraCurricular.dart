import 'package:flutter/material.dart';
import 'package:resume/Utilities/TextStyle.dart';
import 'package:resume/Utilities/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ExtraCurricular extends StatelessWidget {
  const ExtraCurricular({Key? key}) : super(key: key);

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
                "Extra Curricular Activities",
                style: headerText,
              ),
            ),
            _itemWidget(
                "Secretary (PDC EPEC)",
                "https://epecvitpune.com/",
                "Event Planning and Execution Committee(EPEC) developed management and organizational skills along with soft skills most required for an event's organization.\n"
                    "I have been working with this team since my 1st year(01/2021) from a volunteer till today as a Secretary"
                    "Jan 2021- Present"),
            _itemWidget(
                "Coordinator",
                "https://github.com/mlscvitpune/",
                "Microsoft Learning students Club(MLSC )VIT Pune is a Student learning club that functions under the wing of Microsoft, to conduct various technical events and interactive boot camps.\n"
                    "Working in the Management team of this club has amplified my confidence and Technical skills while working on projects.\n"
                    "June 2022 -Present"),
            _itemWidget(
                "Volunteer",
                "https://nss.gov.in/",
                "The National Service Scheme (NSS), a Central Sector Program of the Government of India, offers young students the chance to gain first-hand experience performing community service. NSS camps are social camps held to enhance the leadership and management skills of a student.\n"
                    " Aug 2018 - May 2020"),
            _itemWidget(
                "Volunteer (Aatmabodh)",
                "https://swd.vit.edu/",
                "Aatmabodh is an Flagship Event Organised by Social Welfare and Development Committee of VIT Pune,"
                    "As a part of social work in this event we make Elder people familiar with the new technology and newly available apps"
                    "which helps them in their day to day life\n"
                    "Sept 2021"),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(EduTitle, Titlelink, description) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 6, top: 10),
            // child: InkWell(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 8.0),
              padding: const EdgeInsets.all(8.0),
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
