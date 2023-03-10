import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import "./splash.dart";
import './Homepage.dart';
import 'Feedpage.dart';

// void main() {
//   runApp(const MyApp());
// }
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: Scaffold(
      //   body: Column(
      //     children: const [HomePage()],
      //   ),
      // ),
      home: const Splash(),
      //home: FeedPage(),
      //home: Homepage(),
    );
  }
}