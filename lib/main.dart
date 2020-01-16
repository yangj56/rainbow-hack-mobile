import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainbow_hack/providers/authentication.dart';
import 'package:rainbow_hack/screens/connections/pwd_screen.dart';
import 'package:rainbow_hack/screens/dashboard_screen.dart';
import 'package:rainbow_hack/screens/group_screen.dart';
import 'package:rainbow_hack/screens/kampong_screen.dart';
import 'package:rainbow_hack/screens/match.dart';
import 'package:rainbow_hack/screens/profile_screen.dart';
import 'package:rainbow_hack/screens/registration_screen.dart';
import 'package:rainbow_hack/screens/events_screen.dart';
import 'package:rainbow_hack/screens/create_event_screen.dart';
import 'package:rainbow_hack/screens/sign_up_screen.dart';
import 'package:rainbow_hack/screens/requests_screen.dart';
import 'package:rainbow_hack/screens/slides.dart';

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
            primarySwatch: Colors.blue,
            primaryColor: Color.fromRGBO(81, 234, 234, 1),
            accentColor: Color.fromRGBO(255, 219, 197, 1),
            primaryColorLight: Color.fromRGBO(255, 157, 118, 1),
            splashColor: Color.fromRGBO(239, 67, 57, 1),
            buttonColor: Color.fromRGBO(76, 170, 207, 1),
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Lato',
            textTheme: TextTheme(
              headline: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
              title: TextStyle(
                fontSize: 20.0,
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
                fontSize: 14.0,
                fontFamily: 'Lato',
                color: Colors.white,
              ),
              display4: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Lato',
                color: Colors.white,
              ),
            )),
        home: DashboardScreen(),
        routes: {
          ProfileScreen.routeName: (ctx) => ProfileScreen(),
          KampongScreen.routeName: (ctx) => KampongScreen(),
          SignupScreen.routeName: (ctx) => SignupScreen(),
          GroupScreen.routeName: (ctx) => GroupScreen(),
          DashboardScreen.routeName: (ctx) => DashboardScreen(),
          MatchScreen.routeName: (ctx) => MatchScreen(),
          RegistrationScreen.routeName: (ctx) => RegistrationScreen(),
          RequestsScreen.routeName: (ctx) => RequestsScreen(),
          PWDScreen.routeName: (ctx) => PWDScreen(),
          CreateEventScreen.routeName: (ctx) => CreateEventScreen(),
          EventsScreen.routeName: (ctx) => EventsScreen(),
          SlidesScreen.routeName: (ctx) => SlidesScreen(),
        },
      ),
    );
  }
}
