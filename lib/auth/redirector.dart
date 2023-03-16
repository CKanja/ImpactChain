import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sdg_goals/Homepage.dart';
import 'package:sdg_goals/auth/Authpage.dart';
import 'package:sdg_goals/bottomnav.dart';
import './login_firebase.dart';
import 'login_firebase.dart';


class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => 
    Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasError){
            return Center(child: Text('Something went wrong!'));
          }
          else if (snapshot.hasData){
            return bottomNav();
          } else{
            return AuthPage();
          }
        },
      ),
    );
  }


