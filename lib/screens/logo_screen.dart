// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/slides.dart';

class LogoScreen extends StatelessWidget {
  static const routeName = '/logo';
  // static const timeout = const Duration(seconds: 3);
  // static const ms = const Duration(milliseconds: 1);

  // LogoScreen(BuildContext context) {
  //   startTimeout(context);
  // }

  // startTimeout(context) {
  //   return new Timer(timeout, () => _navigateToSlides(context));
  // }

  _navigateToSlides(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, SlidesScreen.routeName, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new GestureDetector(
        onTap: () {
          _navigateToSlides(context);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Image.asset('assets/image/splash_apartments.jpg')),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: new Text(
                  "My Kampong",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 24,
                      decoration: TextDecoration.none),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
