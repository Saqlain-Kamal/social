import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_app/Models/story.dart';
import 'package:social_app/app/router.dart';
import 'package:social_app/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // final stringifiedData =
    //     await rootBundle.loadString("assets/data/data.json");
    // final Map<String, dynamic> data =
    //     Map<String, dynamic>.from(jsonDecode(stringifiedData));
    // final List str = (data["Stroies"] as Map<String, dynamic>)
    //     .entries
    //     .map((e) => Story.fromjson(e.value))
    //     .toList();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.popAndPushNamed(context, AppRouter.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
