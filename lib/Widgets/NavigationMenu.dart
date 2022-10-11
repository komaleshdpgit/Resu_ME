import '../Utilities/colors.dart';
import 'LoadSvg.dart';
import 'package:flutter/material.dart';

Widget NavigationMenu(icon, {isSelected = false, height, width, onClick}) {
  return InkWell(
    onTap: onClick,
    child: Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          svgLoader(icon, height: height, width: width),
          Container(
              height: 8,
              margin: EdgeInsets.only(bottom: 10),
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: isSelected ? navigationSelectionColor : Colors.blue,
              )),
        ],
      ),
    ),
  );
}
