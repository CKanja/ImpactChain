import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sdg_goals/create_pledge.dart';
import 'package:sdg_goals/quiz.dart';
import 'package:sdg_goals/quiz_welcome.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  late MockNavigatorObserver mockObserver;

  setUp(() {
    mockObserver = MockNavigatorObserver();
  });

  testWidgets('Testing whether Quiz button leads to the quiz page',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        //home: CreatePledge(),
        home: quizWelcome(),
        navigatorObservers: [mockObserver],
      ),
    );

    // Find and tap the submit button
    // final submitButton = find.text('CREATE');
    final submitButton = find.byType(ElevatedButton);
    //final submitButton = find.byKey(const Key('myButton'));
    

    expect(submitButton, findsOneWidget);

    await tester.tap(submitButton);
    await tester.pumpAndSettle();

    // Check if the expected screen is pushed onto the navigation stack
    expect(find.byType(QuizWidget), findsOneWidget);
    // Expect the form validation error messages to be shown
    // expect(find.text('Please enter a title'), findsOneWidget);
    // expect(find.text('Please enter a short description'), findsOneWidget);
    // expect(find.text('Please enter detailed information'), findsOneWidget);
    // expect(find.text('Please enter an SDG number'), findsOneWidget);
    // expect(find.text('Please enter a country'), findsOneWidget);

    // // Fill the form with invalid values
    // final titleInput = find.widgetWithText(TextFormField, 'Title');
    // expect(titleInput, findsOneWidget);
    // await tester.enterText(titleInput, '');
    // final shortDescriptionInput =
    //     find.widgetWithText(TextFormField, 'Short description');
    // expect(shortDescriptionInput, findsOneWidget);
    // await tester.enterText(shortDescriptionInput, '');
  });
}
