import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = "You did it";
    if (resultScore <= 70) {
      resultText = "Yeah Buddy, thats it";
    } else {
      resultText = "You know me baby";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("./assets/images/bg1.jpg"), fit: BoxFit.fill),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("You have finished the Quiz and this is your score:", style: TextStyle(
                fontFamily: 'DM',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${resultScore}', style: const TextStyle(
                fontFamily: 'DM',
                fontSize: 60,
                color: Colors.redAccent,
            
              ),),
            )
          ],
        ),
      ),
    );
  }
}
