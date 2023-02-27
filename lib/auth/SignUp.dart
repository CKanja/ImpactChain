import 'package:flutter/material.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

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
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // now build the Form widget using the _formKet created above
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            color: const Color.fromRGBO(50, 0, 69, 1),
            width: width,
            height: height,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 100, 0, 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    const Text("Welcome back, Login!!",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    TextFormField(
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                          hintText: "UserName",
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter a UserName';
                        }
                        return null;
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: TextFormField(
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                        decoration: const InputDecoration(
                            hintText: "Nationality",
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.white))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter a Nationality';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: TextFormField(
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                        decoration: const InputDecoration(
                            hintText: "Password",
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.white))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter a Password';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          //validate returns true if the form is valid, or false otherwise
                          // if (_formKey.currentState!.validate()) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text("Processing Data")),
                          //   );
                          // }

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
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
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
