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
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("You have finished the Quiz and this is your score", style: TextStyle(
                fontFamily: 'DM',
                fontSize: 20,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${resultScore}', style: TextStyle(
                fontFamily: 'DM',
                fontSize: 30,
                color: Color(0xFF3D003B),
            
              ),),
            )
          ],
        ),
      ),
    );
  }
}
