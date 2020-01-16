import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/slides.dart';

class LogoScreen extends StatefulWidget {
  static const routeName = '/logo';

  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
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
