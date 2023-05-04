// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:sdg_goals/create_pledge.dart';

// class MockNavigatorObserver extends Mock implements NavigatorObserver {}

// // void main() {
// //   late MockNavigatorObserver mockObserver;

// //   setUp(() {
// //     mockObserver = MockNavigatorObserver();
// //   });

// //   testWidgets('Testing Create pledge',
// //       (WidgetTester tester) async {
// //     await tester.pumpWidget(
// //       MaterialApp(
// //         //home: CreatePledge(),
// //         home: CreatePledge(),
// //         navigatorObservers: [mockObserver],
// //       ),
// //     );

// //     // Find and tap the submit button
// //     // final submitButton = find.text('CREATE');
// //     final submitButton = find.byType(ElevatedButton);
// //     //final submitButton = find.byKey(const Key('myButton'));

// //     expect(submitButton, findsOneWidget);

// //     await tester.tap(submitButton);
// //     await tester.pumpAndSettle();

    
// //     // Expect the form validation error messages to be shown
// //     expect(find.text('Please enter a title'), findsOneWidget);
// //     expect(find.text('Please enter a short description'), findsOneWidget);
// //     expect(find.text('Please enter detailed information'), findsOneWidget);
// //     expect(find.text('Please enter an SDG number'), findsOneWidget);
// //     expect(find.text('Please enter a country'), findsOneWidget);

// //     // // Fill the form with invalid values
// //     // final titleInput = find.widgetWithText(TextFormField, 'Title');
// //     // expect(titleInput, findsOneWidget);
// //     // await tester.enterText(titleInput, '');
// //     // final shortDescriptionInput =
// //     //     find.widgetWithText(TextFormField, 'Short description');
// //     // expect(shortDescriptionInput, findsOneWidget);
// //     // await tester.enterText(shortDescriptionInput, '');
// //   });
// // }

// void main () {
//   testWidgets('MyWidget should navigate to another screen when ElevatedButton is pressed', (WidgetTester tester) async {
//   final GlobalKey<FormState> myWidgetKey = GlobalKey<FormState>();
  
//   await tester.pumpWidget(
//     StatefulBuilder(
//       builder: (BuildContext context, StateSetter setState) {
//         return CreatePledge(
//           //key: myWidgetKey,
//         );
//       },
//     ),
//   );

//   // Find the ElevatedButton widget and tap it
//   final Finder elevatedButtonFinder = find.byType(ElevatedButton);
//   expect(elevatedButtonFinder, findsOneWidget);

//   await tester.tap(elevatedButtonFinder);
//   await tester.pumpAndSettle();

//   // Check that the new screen has been pushed onto the Navigator stack
//   expect(find.text('New Screen'), findsOneWidget);
// });








// }
