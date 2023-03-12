import 'package:flutter/material.dart';
import '../Homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

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
              margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    const Text("Log In",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white), 
                        decoration:  InputDecoration(
                            hintText: "UserName",
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
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide:  BorderSide(
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
                           style: TextStyle(color: Colors.white), 
                          decoration:  InputDecoration(
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
                                color: Colors.white,
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
                        onPressed: () {
                          //validate returns true if the form is valid, or false otherwise
                          if (_formKey.currentState!.validate()) {
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   const SnackBar(content: Text("Processing Data")),
                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ),
                            );
                          }
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
