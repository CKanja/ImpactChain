import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sdg_goals/bottomnav.dart';
import './auth/SignUp.dart';
import './auth/redirector.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      (() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            //builder: (context) => const SignUp(),
            builder: (context) =>  MainPage(),
            //builder: (context) => bottomNav(),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(50, 0, 69, 1),
        width: width,
        height: height,
        child: Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Text(
                  "Impact Chain",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Image.asset("assets/image2.png")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
