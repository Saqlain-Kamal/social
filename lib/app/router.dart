import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/Models/story.dart';
import 'package:social_app/screens/home.dart';
import 'package:social_app/screens/login.dart';
import 'package:social_app/screens/messges.dart';
import 'package:social_app/screens/splash.dart';

class AppRouter {
  static const splash = '/';
  static const login = '/login';
  static const home = '/home';
  static const stories = '/messages';

  static Route<dynamic>? ongenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(builder: ((context) => Splash()));

      case login:
        return MaterialPageRoute(builder: ((context) => Login()));
      case stories:
        return MaterialPageRoute(builder: ((context) => Messages()));

      case home:
        
        return MaterialPageRoute(
          builder: ((context) => Home()),
        );
    }
  }
}
