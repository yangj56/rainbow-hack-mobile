import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainbow_hack/providers/authentication.dart';
import 'package:rainbow_hack/screens/intro_yourself_2_screen.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class SlidesScreen extends StatefulWidget {
  static const routeName = '/slides';

  @override
  _SlidesScreenState createState() => _SlidesScreenState();
}

class _SlidesScreenState extends State<SlidesScreen> {
  bool _isLoading = false;
  int _slideIndex = 0;

  final List<String> images = [
    "assets/image/onboarding_01-connect.jpg",
    "assets/image/onboarding_02-inclusiveness.jpg",
    "assets/image/onboarding_03-quality.jpg",
  ];

  final List<String> text0 = [
    "Where befrienders and persons with disabilities can connect",
    "To create an inclusive community",
    "To improve the quality of lives of persons with disabilities",
  ];

  final IndexController controller = IndexController();

  Widget renderDot(double radius, Color color, double opacity) {
    return Opacity(
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius / 2),
            border: Border.all(color: Colors.black)),
        width: radius,
        height: radius,
        margin: EdgeInsets.only(left: radius / 2, right: radius / 2),
      ),
      opacity: opacity,
    );
  }

  Iterable<Widget> renderListDots(int _slideIndex) sync* {
    for (int i = 0; i < 3; i++) {
      yield renderDot(10.0, Colors.black54, _slideIndex == i ? 1.0 : 0.2);
    }
  }

  _navigateToIntroduction(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });
    await Provider.of<Authentication>(context, listen: false).login();
    setState(() {
      _isLoading = false;
    });
    Navigator.pushNamedAndRemoveUntil(
        context, IntroYourself2Screen.routeName, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    TransformerPageView transformerPageView = TransformerPageView(
        pageSnapping: true,
        onPageChanged: (index) {
          setState(() {
            this._slideIndex = index;
          });
        },
        loop: false,
        controller: controller,
        transformer: new PageTransformerBuilder(
            builder: (Widget child, TransformInfo info) {
          return new Material(
            color: Colors.white,
            elevation: 8.0,
            textStyle: new TextStyle(color: Colors.white),
            child: new Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new ParallaxContainer(
                      child: new Container(
                          width: screenWidth * 0.8,
                          child: Text(text0[info.index],
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 26.0,
                                  fontFamily: 'Lato'))),
                      position: info.position,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    new ParallaxContainer(
                      child: new Image.asset(
                        images[info.index],
                        fit: BoxFit.contain,
                        height: 300,
                      ),
                      position: info.position,
                      translationFactor: 400.0,
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
        itemCount: images.length);

    return _isLoading
        ? Container(
            child: Center(child: CircularProgressIndicator()),
            color: Colors.white,
          )
        : Container(
            color: Colors.white,
            child: Column(children: <Widget>[
              Flexible(fit: FlexFit.loose, child: transformerPageView),
              new Container(
                  child: Row(
                children: renderListDots(_slideIndex).toList(),
                mainAxisAlignment: MainAxisAlignment.center,
              )),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                  height: 50.0,
                  width: screenWidth * 0.9,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                      color: Theme.of(context).buttonColor,
                      textColor: Colors.white,
                      onPressed: () {
                        _navigateToIntroduction(context);
                      },
                      child: Text(
                        "Log in with SingPass",
                        style: TextStyle(fontSize: 20.0),
                      ))),
              SizedBox(
                height: 80.0,
              ),
            ]));
  }
}
