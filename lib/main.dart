import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainbow_hack/providers/authentication.dart';
import 'package:rainbow_hack/screens/connections/connections_screen.dart';
import 'package:rainbow_hack/screens/dashboard_screen.dart';
import 'package:rainbow_hack/screens/group_screen.dart';
import 'package:rainbow_hack/screens/intro_yourself_2_screen.dart';
import 'package:rainbow_hack/screens/intro_yourself_3_screen.dart';
import 'package:rainbow_hack/screens/kampong_screen.dart';
import 'package:rainbow_hack/screens/logo_screen.dart';
import 'package:rainbow_hack/screens/match_screen.dart';
import 'package:rainbow_hack/screens/profile_screen.dart';
import 'package:rainbow_hack/screens/registration_screen.dart';
import 'package:rainbow_hack/screens/events_screen.dart';
import 'package:rainbow_hack/screens/create_event_screen.dart';
import 'package:rainbow_hack/screens/settings.dart';
import 'package:rainbow_hack/screens/sign_up_screen.dart';
import 'package:rainbow_hack/screens/requests_screen.dart';
import 'package:rainbow_hack/screens/slides.dart';
import 'package:rainbow_hack/screens/intro_yourself_1_screen.dart';

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
        debugShowCheckedModeBanner: false,
        title: 'My Village',
        theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Color.fromRGBO(132, 212, 233, 1),
            primaryColorLight: Color.fromRGBO(23, 172, 211, 1),
            splashColor: Color.fromRGBO(239, 67, 57, 1),
            buttonColor: Color.fromRGBO(76, 170, 207, 1),
            backgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            highlightColor: Color.fromRGBO(118, 201, 222, 1),
            fontFamily: 'Lato',
            textTheme: TextTheme(
              headline: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
              title: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
              body1: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
              body2: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
              display1: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
              display2: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Lato',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              display3: TextStyle(
                fontSize: 13.0,
                fontFamily: 'Lato',
                color: Colors.white,
              ),
              display4: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            )),
        home: LogoScreen(),
        routes: {
          ProfileScreen.routeName: (ctx) => ProfileScreen(),
          KampongScreen.routeName: (ctx) => KampongScreen(),
          SignupScreen.routeName: (ctx) => SignupScreen(),
          GroupScreen.routeName: (ctx) => GroupScreen(),
          DashboardScreen.routeName: (ctx) => DashboardScreen(),
          MatchScreen.routeName: (ctx) => MatchScreen(),
          RegistrationScreen.routeName: (ctx) => RegistrationScreen(),
          RequestsScreen.routeName: (ctx) => RequestsScreen(),
          ConnectionsScreen.routeName: (ctx) => ConnectionsScreen(),
          CreateEventScreen.routeName: (ctx) => CreateEventScreen(),
          EventsScreen.routeName: (ctx) => EventsScreen(),
          SlidesScreen.routeName: (ctx) => SlidesScreen(),
          IntroYourself1Screen.routeName: (ctx) => IntroYourself1Screen(),
          IntroYourself2Screen.routeName: (ctx) => IntroYourself2Screen(),
          IntroYourself3Screen.routeName: (ctx) => IntroYourself3Screen(),
          SettingScreen.routeName: (ctx) => SettingScreen(),
        },
      ),
    );
  }
}
