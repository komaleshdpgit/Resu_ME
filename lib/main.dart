import 'package:flutter/material.dart';
import 'package:resume/Pages/Education.dart';
import 'package:resume/Pages/ExtraCurricular.dart';
import 'package:resume/Pages/Info.dart';
import 'package:resume/Pages/Portfolio.dart';
import 'Pages/Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resu_ME',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
// #endregion
      home: MyHomePage(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);
  final _bottomNavigationBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Profile')),
    BottomNavigationBarItem(icon: Icon(Icons.star), label: ('Info')),
    BottomNavigationBarItem(icon: Icon(Icons.computer), label: ('Portfolio')),
    BottomNavigationBarItem(icon: Icon(Icons.book), label: ('Education')),
    BottomNavigationBarItem(
        icon: Icon(Icons.sports), label: ('ExtraCurricular')),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,

// #endregion
        body: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            ProfilePage(),
            InfoPage(),
            PortfolioPage(),
            ExperiencePage(),
            ExtraCurricular(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightBlueAccent,
          unselectedItemColor: Colors.grey[700],
          currentIndex: _currentIndex,
          items: _bottomNavigationBarItems,
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          },
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}
