import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:the_social/constants/Constantcolors.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingHelpers with ChangeNotifier {
  ConstantColors constantColors = ConstantColors();

  Widget bodyImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/login.png'))),
    );
  }

  Widget taglineText(BuildContext context) {
    return Positioned(
      top: 450.0,
      left: 10.0,
      child: Container(
        constraints: BoxConstraints(maxWidth: 170.0),
        child: RichText(
          text: TextSpan(
              text: 'Are ',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: constantColors.whiteColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: 'You ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: constantColors.blueColor,
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Social ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: constantColors.blueColor,
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '?',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: constantColors.blueColor,
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
      ),
    );
  }

  Widget mainButtons(BuildContext context) {
    return Positioned(
      top: 630.0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Container(
                child: Icon(
                  EvaIcons.emailOutline,
                  color: constantColors.yellowColor,
                ),
                width: 80.0,
                height: 40.0,
                decoration: BoxDecoration(
                    border: Border.all(color: constantColors.yellowColor),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            GestureDetector(
              child: Container(
                child: Icon(
                  FontAwesomeIcons.google,
                  color: constantColors.redColor,
                ),
                width: 80.0,
                height: 40.0,
                decoration: BoxDecoration(
                    border: Border.all(color: constantColors.redColor),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            GestureDetector(
              child: Container(
                child: Icon(
                  FontAwesomeIcons.facebookF,
                  color: constantColors.blueColor,
                ),
                width: 80.0,
                height: 40.0,
                decoration: BoxDecoration(
                    border: Border.all(color: constantColors.blueColor),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget privacyText(BuildContext context) {
    return Positioned(
      top: 700.0,
      left: 20.0,
      right: 20.0,
      child: Container(
        child: Column(children: [
          Text('By continuing you agree theSocial terms of',
              style:
                  TextStyle(color: constantColors.greyColor, fontSize: 12.0)),
          Text('Services and Privacy Policy',
              style:
                  TextStyle(color: constantColors.greyColor, fontSize: 12.0)),
        ]),
      ),
    );
  }
}
