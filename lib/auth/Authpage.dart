import 'package:flutter/material.dart';
import 'package:sdg_goals/auth/signup_firebase.dart';
import 'package:sdg_goals/auth/login_firebase.dart';


class AuthPage extends StatefulWidget{
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) =>
        isLogin ? Login(onClickedSignUp: toggle) 
                : SignUp(onClickedSignIn: toggle);

        void toggle() => setState(() => isLogin = !isLogin);
}