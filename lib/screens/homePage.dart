import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_flutter/screens/home_screen.dart';

class Home_controller extends StatefulWidget {
  @override
  _Home_controllerState createState() => _Home_controllerState();
}

class _Home_controllerState extends State<Home_controller> {
  int _indexb = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        backgroundColor: Color.fromRGBO(232, 167, 153, 1),
        buttonBackgroundColor: Colors.white,
        items: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.library_books_outlined),
              Text("Browse"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("Artist"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home_outlined),
              Text("Home"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.playlist_add_outlined),
              Text("Playlist"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.my_library_music_outlined),
              Text("My Music"),
            ],
          ),
        ],
        onTap: (index) {
          setState(() {
            _indexb = index;
          });
        },
      ),
      body: HomePage(),
    );
  }
}
