import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_flutter/Animation/FadeAnimation.dart';
import 'package:radio_flutter/screens/homePage.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.redAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Colors.redAccent,
              Colors.redAccent,
              Colors.grey,
              Colors.grey,
              Colors.grey,
              Colors.grey,
              Colors.grey,
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_controller()));
                    },
                    child: FadeAnimation(
                      2.4,
                      Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: FadeAnimation(
                                1.1,
                                Image(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2016/06/22/16/51/microphones-1473422_1280.png",
                                  ),
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            FadeAnimation(
                              1.2,
                              Text(
                                "Music; it is the only language that the human spirit can understand. -Bennet",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            FadeAnimation(
                              1.3,
                              Text(
                                "Whenever you turn on the radio, you will always hear the last melodies of your favorite song. -Müşfik Kenter",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: FadeAnimation(
                                1.1,
                                Image(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/03/12/21/39/boombox-2138198_1280.png",
                                  ),
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            FadeAnimation(
                              1.2,
                              Text(
                                "Music; It is the art of expressing pleasant emotions with sounds. -Kant",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            FadeAnimation(
                              1.3,
                              Text(
                                "One should listen to a piece of music every day, read a good poem, see a beautiful painting, and say a few sensible sentences if possible. -Goethe",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(45.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: FadeAnimation(
                                1.1,
                                Image(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2016/06/13/16/29/man-1454591_1280.png",
                                  ),
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            FadeAnimation(
                              1.2,
                              Text(
                                "The best music… is what makes you see the world. -Bruce Springsteen",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            FadeAnimation(
                              1.3,
                              Text(
                                "As I listened to music, there was a flow of emotions that made me happy and hopeful. "
                                "Music brought promises and hopes that something would happen with it. -Christy Brown",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextLiquidFill(
                                  loadDuration: Duration(milliseconds: 3000),
                                  text: 'Next',
                                  waveColor: Colors.white,
                                  boxBackgroundColor: Colors.grey,
                                  textStyle: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  boxHeight: 40.0,
                                  boxWidth: 90.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                FadeAnimation(
                                  1.5,
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(""),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_controller()));
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: FadeAnimation(
                      1.4,
                      Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(""),
    );
  }
}
