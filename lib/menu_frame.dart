import 'package:flutter/material.dart';
import 'package:flutter_app/home_signin_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class MenuFrame extends StatelessWidget {
  PageController pageController = PageController();
  Duration _animationDuration = Duration(milliseconds: 500);

  void _changePage(int page) {
    pageController.animateToPage(page,
    duration: _animationDuration, curve: Curves.easeIn);
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical:70.0,horizontal:28.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.handsHelping, 
                    color: Colors.white70,
                    size: 50.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'GRIP',
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.bold, 
                      fontSize: 30.0
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'The Sparks Foundation',
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.bold, 
                      fontSize: 20.0
                    ),
                  ),
                  SizedBox(
                    height: 90.0,
                  ),
                  Expanded(
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: pageController,
                      children: <Widget>[
                        HomeSignInWidget(
                          goToPageCallback: (page) {
                          _changePage(page);
                        },
                        ),
                        //HomeSignInWidget(),
                      ],
                    ),
                  ),
// -------------------------------------------- FaceBook Login ------------------------------------------------
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(173, 83, 137, 1.0),
                Color.fromRGBO(60, 16, 83, 1.0),
              ]
            ),
          ),
        ),
      );
  }
}

