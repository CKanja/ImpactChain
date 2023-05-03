import 'package:flutter_test/flutter_test.dart';
import 'package:sdg_goals/quiz.dart';
import 'package:sdg_goals/quiz.dart';
import 'package:sdg_goals/quiz.dart';

void main() {
  test('Testing the quiz incrementing functionality.', () {
    
      // Arrange
      final myWidget = QuizWidgetState(); // replace with your widget name
      final initialQuestionIndex = myWidget.questionIndex;
      //final initialTotalScore = myWidget.totalScore;

      // Act
      myWidget.answerQuestion(5);

      // Assert
      expect(myWidget.questionIndex, initialQuestionIndex + 1);
      //expect(myWidget.totalScore, initialTotalScore + 5);
    
  });
}