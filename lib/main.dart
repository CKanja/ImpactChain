import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sdg_goals/auth/utils.dart';
import "./splash.dart";
import './Homepage.dart';
import 'Feedpage.dart';
import 'auth/redirector.dart';
import 'auth/utils.dart';


// void main() {
//   runApp(const MyApp());
// }
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  AwesomeNotifications().initialize(null, 
  [
    NotificationChannel(
      channelKey: 'basic_channel', 
      channelName: 'Basic notifications', 
      channelDescription: 'Notification channel for basic tests',
      ),
  ],
      debug: true,
  );
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();
//final messengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //primarySwatch: Colors.blueGrey,
      primaryColor: Color(0xFF3D003B),
      ),
      // home: Scaffold(
      //   body: Column(
      //     children: const [HomePage()],
      //   ),
      // ),
      home: const Splash(),
      //home: MainPage(),
      //home: FeedPage(),
      //home: Homepage(),
    );
  }
}
