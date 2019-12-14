import 'package:flutter/material.dart';
import 'package:star_app/models/movie_model.dart';
import 'package:star_app/screens/movie_screen.dart';
import 'package:star_app/widgets/content_scroll.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'bodyhome.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPage = 0;
  final _pageOption = [Homebody(), searchbody, inboxbody, profilebody];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image(
          image: AssetImage('assets/images/Logo hitam.png'),
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 30.0),
            onPressed: () => print('Search'),
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.black,
          ),
        ],
      ),
      body: _pageOption[_selectedPage],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        height: 50,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.inbox,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          )
        ],
        onTap: (index) {
          _selectedPage = index;
          setState(() {});
        },
      ),
    );
  }
}
