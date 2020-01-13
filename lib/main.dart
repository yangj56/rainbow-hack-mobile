import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rainbow_hack/screens/bottom_tab_screen.dart';
import 'package:rainbow_hack/screens/guild_wall.dart';
import 'package:rainbow_hack/screens/match.dart';
import 'package:rainbow_hack/screens/sign_up_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        title: 'My Village',
        theme: ThemeData(
            primarySwatch: Colors.teal,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
            textTheme: TextTheme(
              headline: TextStyle(
                fontSize: 72.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
              ),
              title: TextStyle(
                fontSize: 36.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Lato',
              ),
              body1: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Lato',
                color: Colors.green,
              ),
              body2: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Lato',
                color: Colors.red,
              ),
            )),
        home: SignupScreen(),
        routes: {
          BottomTabScreen.routeName: (ctx) => BottomTabScreen(),
          GuildWallScreen.routeName: (ctx) => GuildWallScreen(),
          MatchScreen.routeName: (ctx) => MatchScreen()
        },
      ),
    );
  }
}
