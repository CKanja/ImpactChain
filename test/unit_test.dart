import 'package:flutter_test/flutter_test.dart';
import 'package:sdg_goals/quiz.dart';



void main() {
  // test('Testing the quiz incrementing functionality.', () {
  //   final quizCounter = QuizWidgetState();
    
  //   quizCounter.answerQuestion(1);
  //   var totalScore = 0;
  //   var questionIndex = 1;
  //   expect(totalScore, 1);
  //   expect(questionIndex, 1);

  // });

  testWidgets('Test answerQuestion()', (WidgetTester tester) async {
    // Create a test instance of the widget
    await tester.pumpWidget(QuizWidget());

    // Get the state object of the widget
    QuizWidgetState state = tester.state(find.byType(QuizWidget));

    // Call answerQuestion() with a score of 10
    state.answerQuestion(10);

    // Verify that the total score has been updated correctly
    expect(totalScore, 10);

    // Verify that the question index has been incremented
    expect(state.questionIndex, 1);

    // Verify that the widget has been rebuilt
    await tester.pump();

    // Verify that the UI has been updated with the new question
    //expect(find.text(questions[1]), findsOneWidget);
  });
}