// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:sdg_app/sdgCart.dart';
import 'package:sdg_goals/sdgCart.dart';
//import './bottomNavBar.dart';
import './models/sdgs.dart';
import './singleSdgBody.dart';
import 'Feedpage.dart';
import './quiz.dart';
import 'profile_page.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left),
          color: Color(0xFF5D2B5C),
          iconSize: 30,
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outlined),
            color: Color(0xFF5D2B5C),
            iconSize: 30,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.login_outlined),
            color: Color(0xFF5D2B5C),
            iconSize: 30,
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => FeedPage() ));
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),

      body: Container(
        //alignment: Alignment.bottomCenter,
        //child: Image.asset("assets/images/sdgbar.jpg")),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image.asset("assets/images/sdgbar.jpg"),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "SDGs",
                style: TextStyle(
                    fontFamily: "DM",
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5D2B5C)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  "Your one stop knowledge hub for the Sustainable Development Goals.",
                  style: TextStyle(
                      fontFamily: 'DM',
                      fontSize: 16,
                      color: Color(0xFF5D2B5C))),
            ),
            // Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 10),
            //     child: ElevatedButton(
            //       child: Text("Take The Quiz"),
            //       onPressed: (() {
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) => QuizWidget()));
            //       }),
            //     )),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Image.asset("assets/images/sdgbar.jpg"),
            ),
            //sdgCard(press: () {  }, sdg: null,),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  itemCount: sdgs.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1),
                  itemBuilder: (context, index) => sdgCard(
                      sdg: sdgs[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sdgBody(
                                      sdg: sdgs[index],
                                    )));
                      })),
            )),

            //     ),
            // Expanded(child: Image.asset("assets/images/sdgbar.jpg"))
            // Align(
            //   alignment: Alignment.topCenter,
            //   child: Image.asset("assets/images/sdgbar.jpg"))
          ],
        ),
      ),

      //bottomNavigationBar: BottomNavBar(),

      // ],
    );
  }
}
