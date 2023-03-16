import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'utils.dart';

//import 'package:firebase_auth_email/main.dart';
//import 'package:firebase_auth_email/utils/utils.dart';
import 'package:flutter/gestures.dart';
import '../main.dart';
import '../Homepage.dart';

class SignUp extends StatefulWidget {
  final VoidCallback onClickedSignIn;

  const SignUp({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);

  //const SignUp({super.key});

  @override
  SignUpState createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
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
                     
                      Image.asset("./assets/images/impactChain.png", width: 200,),
                      const Text("Sign Up to Join The Impact Chain",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'DM',
                              fontWeight: FontWeight.w600,
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

                          // ********* validation **********
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (email) => 
                              email!= null && !EmailValidator.validate(email)
                                  ? 'Enter a valid email'
                                  : null,
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please Enter aN Email';
                          //   }
                          //   return null;
                          // },
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
                                    width: 3,
                                    color: Colors.amber), //<-- SEE HERE
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

                            // ********* validation **********
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) =>
                                value != null && value.length < 6
                                    ? 'Enter min. 6 characters'
                                    : null,

                            // validator: (value) {
                            //   if (value == null || value.isEmpty) {
                            //     return 'Please Enter a Password';
                            //   }
                            //   return null;
                            // },
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: ElevatedButton(
                          onPressed: signUp,

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
                          //         return SignUp();
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
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'DM',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(55, 113, 91, 1)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 42,
                      ),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'DM'),
                              text: 'Already a member of Impact Chain?  ',
                              children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = widget.onClickedSignIn,
                                text: 'Log In',
                                style: TextStyle(color: Colors.amber))
                          ]))
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Future signUp() async {

    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: nameController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseException catch (e) {
      print(e);

      
     Utils.showSnackBar(e.message);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
