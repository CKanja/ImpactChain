// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'profile_page.dart';
import 'services/database.dart';
import 'widgets/header_widget.dart';
import 'widgets/theme_helper.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Model class for storing form data
class SdgFormData {
  String title;
  String shortDescription;
  String detailedInformation;
  int sdgNumber;
  String country;

  SdgFormData({
    required this.title,
    required this.shortDescription,
    required this.detailedInformation,
    required this.sdgNumber,
    required this.country,
  });
}

class CreatePledge extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreatePledgeState();
  }
}

class _CreatePledgeState extends State<CreatePledge> {
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    // controllers for the form inputs

    // Form fields
    String _title = '';
    String _shortDescription = '';
    String _detailedInformation = '';
    int _sdgNumber = 0;
    String _country = '';

    // Firestore instance
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(
              height: 150,
              child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(width: 5, color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 20,
                                      offset: Offset(5, 5),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey.shade300,
                                  size: 80.0,
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(80, 80, 0, 0),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.grey.shade700,
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Title', 'Enter the title'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a title';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _title = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Short description', 'Provide short summary'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a short description';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _shortDescription = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Detailed information',
                                'Provide more details/story'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter detailed information';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _detailedInformation = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "SDG Number", "Enter the SDG number"),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter an SDG number';
                              } else if (int.tryParse(value) == null) {
                                return 'Please enter a valid SDG number';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _sdgNumber = int.parse(value!);
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Country", "Mention the concerned country"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a country';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _country = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text(
                                      "I accept all terms and conditions.",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).errorColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!checkboxValue) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration:
                              ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "Create".toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {
                              // creating a new document for the user with the uid

                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();

                                // Create a new instance of the model class with the form data
                                final formData = SdgFormData(
                                  title: _title,
                                  shortDescription: _shortDescription,
                                  detailedInformation: _detailedInformation,
                                  sdgNumber: _sdgNumber,
                                  country: _country,
                                );

                                // add the form data to Firestore
                                _firestore.collection('sdg').add({
                                  'title': formData.title,
                                  'shortDescription': formData.shortDescription,
                                  'detailedInformation':
                                      formData.detailedInformation,
                                  'sdgNumber': formData.sdgNumber,
                                  'country': formData.country,
                                  'createdAt': DateTime.now(),
                                }).then((value) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Succesfully addded your pledge!'),
                                    ),
                                  );
                                  // Reset the form fields
                                  setState(() {
                                    _title = '';
                                    _shortDescription = '';
                                    _detailedInformation = '';
                                    _sdgNumber = 0;
                                    _country = '';
                                  });

                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage()),
                                      (Route<dynamic> route) => false);
                                }).catchError((error) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Error adding form data: $error'),
                                    ),
                                  );
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
