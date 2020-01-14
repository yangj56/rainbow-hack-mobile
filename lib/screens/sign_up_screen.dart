import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:rainbow_hack/screens/registration_screen.dart';

import '../providers/authentication.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isLoading = false;
  static String assetName = 'assets/image/flutter-logo.svg';

  final Widget svgIcon = new SvgPicture.asset(
    assetName,
    color: Colors.red,
    semanticsLabel: 'Logo',
  );

  _performLogin(BuildContext ctx) async {
    setState(() {
      _isLoading = true;
    });
    await Provider.of<Authentication>(ctx, listen: false).login();
    setState(() {
      _isLoading = false;
    });
    Navigator.pushNamedAndRemoveUntil(
        context, RegistrationScreen.routeName, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return _isLoading
        ? Container(
            child: Center(child: CircularProgressIndicator()),
            color: Colors.blue,
          )
        : Container(
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: svgIcon,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    child: FlatButton(
                      splashColor: Colors.green,
                      shape: StadiumBorder(),
                      highlightColor: Colors.purple,
                      color: Colors.red,
                      child:
                          Text('Button', style: TextStyle(color: Colors.blue)),
                      onPressed: () => _performLogin(context),
                    ),
                    width: screenWidth * 0.8,
                  ),
                ],
              ),
            ),
          );
  }
}
