import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:radio_flutter/Animation/FadeAnimation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black54,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Colors.deepOrangeAccent,
              Colors.redAccent,
              Colors.deepOrangeAccent,
              Colors.blue,
              Colors.redAccent,
              Colors.deepOrangeAccent,
              Colors.redAccent,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          1.2,
                          Text(
                            "Welcome To",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                        FadeAnimation(
                          1.3,
                          Text(
                            "World Music",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey)),
                          child: FadeAnimation(
                            1.4,
                            Stack(
                              children: [
                                Positioned(
                                  right: 0.0,
                                  top: 7.0,
                                  child: Container(
                                    height: 7.0,
                                    width: 7.0,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Positioned(
                                    right: 10.0,
                                    top: 9.0,
                                    child: Icon(
                                      Icons.wifi_tethering_outlined,
                                      color: Colors.white,
                                      size: 30.0,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        FadeAnimation(
                          1.5,
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_1280.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: FadeAnimation(
                  1.6,
                  TextField(
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.redAccent,
                      ),
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 32.0),
                              borderRadius: BorderRadius.circular(25.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 32.0),
                              borderRadius: BorderRadius.circular(25.0)))),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: FadeAnimation(
                  1.6,
                  _HomePageData(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FadeAnimation(
                          1.7,
                          Text(
                            "Hot ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        FadeAnimation(
                          1.8,
                          Text(
                            "Music List",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                    FadeAnimation(
                      1.9,
                      Text(
                        "See All",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    FadeAnimation(
                      2.0,
                      Hotmusic(
                          "https://media.giphy.com/media/FrnpqArQZtti8/source.gif",
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          "Rihanna",
                          "music list"),
                    ),
                    FadeAnimation(
                      2.1,
                      Hotmusic(
                          "https://media.giphy.com/media/3tw8k6IPpShlC/source.gif",
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          "Shakira",
                          "music list"),
                    ),
                    FadeAnimation(
                      2.2,
                      Hotmusic(
                          "https://media.giphy.com/media/14hzBEmW5bOk6Y/source.gif",
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          "Ricky martin",
                          "music list"),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    FadeAnimation(
                      2.3,
                      Hotmusic(
                          "https://media.giphy.com/media/dExfgFEnVqmOI/source.gif",
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          "One Drection",
                          "music list"),
                    ),
                    FadeAnimation(
                      2.4,
                      Hotmusic(
                          "https://media.giphy.com/media/WJeQfjGe9Zqnu/source.gif",
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          "Selena Gomez",
                          "music list"),
                    ),
                    FadeAnimation(
                      2.5,
                      Hotmusic(
                          "https://media.giphy.com/media/iDUKerBP5SynTxBO2u/source.gif",
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          "Pitbull",
                          "music list"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Hotmusic(String imgUrl, Icon icon, String name, String surname) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child: Container(
      height: 140.0,
      width: 150.0,
      child: Column(
        children: [
          Container(
            height: 140.0,
            width: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.only(left: 120.0, bottom: 100.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: icon,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Text(
                surname,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _HomePageData() {
  return Container(
    height: 250.0,
    width: double.infinity,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
          image: NetworkImage(
            "https://cdn.pixabay.com/photo/2015/05/02/11/55/rihanna-749861_1280.jpg",
          ),
          fit: BoxFit.cover),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 180.0),
      child: Column(
        children: [
          Text(
            "Rihanna",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            "Music",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            "...",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ],
      ),
    ),
  );
}
