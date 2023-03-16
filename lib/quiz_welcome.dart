import 'package:flutter/material.dart';
import 'package:sdg_goals/quiz.dart';

class quizWelcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
         decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("./assets/images/bg1.jpg"), fit: BoxFit.fill),
        ),
        child: Stack(
          children: [

            SafeArea(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Ready For The Challenge?",
                  style: TextStyle(
                    fontFamily: 'DM',
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Colors.white
                
                  ),),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15.0,8,15,15),
                  child: Text(
                    "Click the button below start the SDG quiz",
                    style: TextStyle(
                      fontFamily: 'DM',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent, //background color of button
                          // ignore: prefer_const_constructors
                          side: BorderSide(
                              width: 3,
                              color: Colors.brown), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                          padding:
                              const EdgeInsets.all(20) //content padding inside button
                          ), onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => QuizWidget()));
                          }, child: Text('Start Quiz'),),
                )
              ],
            ))
            
          ],
        ),
      ),
    );
  }


}