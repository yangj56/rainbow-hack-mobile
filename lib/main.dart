import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainbow_hack/providers/authentication.dart';
import 'package:rainbow_hack/screens/dashboard.dart';
import 'package:rainbow_hack/screens/homepage_screen.dart';
import 'package:rainbow_hack/screens/match.dart';
import 'package:rainbow_hack/screens/pwd_screen.dart';
import 'package:rainbow_hack/screens/registration_screen.dart';
import 'package:rainbow_hack/screens/sign_up_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        ),
      ],
      child: MaterialApp(
        title: 'My Village',
        theme: ThemeData(
            primarySwatch: Colors.teal,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
            textTheme: TextTheme(
              headline: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
              ),
              title: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
              ),
              body1: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
              body2: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Lato',
                color: Colors.red,
              ),
              display1: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
            )),
        home: HomepageScreen(),
        routes: {
          PWDScreen.routeName: (ctx) => PWDScreen(),
          HomepageScreen.routeName: (ctx) => HomepageScreen(),
          Dashboard.routeName: (ctx) => Dashboard(),
          MatchScreen.routeName: (ctx) => MatchScreen(),
          RegistrationScreen.routeName: (ctx) => RegistrationScreen(),
        },
      ),
    );
  }
}
