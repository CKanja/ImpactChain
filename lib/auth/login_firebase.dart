import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_auth_email/main.dart';
//import 'package:firebase_auth_email/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:sdg_goals/auth/utils.dart';
import '../main.dart';
import '../Homepage.dart';
import './forgotPassword.dart';


class Login extends StatefulWidget {
  
  final VoidCallback onClickedSignUp;

  const Login({
    Key? key,
    required this.onClickedSignUp,

  }) : super(key: key);

  //const Login({super.key});

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.

  final _formKey = GlobalKey<FormState>();

  // some stuff for controlling the input fields
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // now build the Form widget using the _formKet created above
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: SingleChildScrollView(
          child: Container(
              //color: const Color.fromRGBO(50, 0, 69, 1),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/bg1.jpg"),
                    fit: BoxFit.cover),
              ),
              width: width,
              height: height,
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "./assets/images/impactChain.png",
                        width: 200,
                      ),
                      const Text("Log In",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                        child: TextFormField(
                          controller: nameController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.amber), //<-- SEE HERE
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                color: Colors.white38,
                                width: 2.0,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: Colors.red.shade400,
                                width: 2.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter a UserName';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.amber), //<-- SEE HERE
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Colors.white38,
                                  width: 2.0,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                  color: Colors.red.shade400,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter a Password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: ElevatedButton(
                          onPressed:signIn,
                          
                            //validate returns true if the form is valid, or false otherwise
                            //if (_formKey.currentState!.validate()) {
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(content: Text("Processing Data")),
                              // );
                                
              
                                // Scaffold(
                                //   body: StreamBuilder<User?>(
                                //     stream: FirebaseAuth.instance.authStateChanges(),
                                //     builder:(context, snapshot) {
                                //       if (snapshot.hasData){
                                //         return Homepage();
                                //       } else {
                                //         return Login();
                                //       }
                                //     },
                                //   ) ,
                                // );
              
                                
              
                              //****** to be uncommented */
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Homepage(),
                              //   ),
                              // );
                           // }
                          
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: const Size(200, 50)),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(55, 113, 91, 1)),
                          ),
                        ),
                      ),
                     SizedBox(height: 24,),
                     GestureDetector(
                      // ignore: prefer_const_constructors
                      child: Text('Forgot Password?',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontFamily: 'DM',
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        color: Colors.white
                      ),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ForgotPasswordPage())
                      ),
                     ),


                      SizedBox(height: 24,),
                      RichText(text: TextSpan(
                          style: TextStyle(color: Colors.white, fontFamily: 'DM'
                          ),
                          text: 'New to Impact Chain?  ',
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                              ..onTap = widget.onClickedSignUp,
                              text: 'Sign Up',
                              style: TextStyle(
                                color: Colors.amber
                              )
                            )
                          ]
                      ))
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Future signIn() async{

    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(context: context,
               barrierDismissible: false,
               builder: (context) => Center(child: CircularProgressIndicator(),
               )
               );

    try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: nameController.text.trim(),
      password: passwordController.text.trim(),
    );
    }
    on FirebaseException catch(e) {
      print(e);

      Utils.showSnackBar(e.message);
    }
    
      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    
  }
}
