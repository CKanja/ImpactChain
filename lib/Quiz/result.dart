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
          children: [
            Text("You have finished the Quiz and this is your score"),
            Text(resultPhrase)
          ],
        ),
      ),
    );
  }
}
