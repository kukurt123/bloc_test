import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_p/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('testFeatureX', (tester) async {
    // remove 'await' if your main() is not asynchronous
    app.main();
    await tester.pumpAndSettle();
    // await tester.pumpWidget(app.MyApp());
    final tf = find.byKey(Key('tfs'));
    final button = find.byKey(Key('float'));

    // await tester.runAsync(() async {
    // await tester.showKeyboard(tf);
    // TextField textField = tester.widget(tf);
    // // expect(textField.controller!.text, equals(null));
    // await tester.pump(new Duration(milliseconds: 4000));
    await tester.enterText(tf, 'text');
    // await tester.pumpAndSettle();
    // expect(find.text('text'), findsOneWidget);
    await Future.delayed(Duration(seconds: 1));
    // await tester.pumpAndSettle();
    // await tester.tap(button);
    await tester.tap(button);
    await tester.pumpAndSettle();
    await Future.delayed(Duration(seconds: 1));
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.
    // await Future.delayed(Duration(seconds: 2));
    // await tester.tap(button);
    // await tester.pump();
    // expect();
    print('done');
    // });
  });
  // doTest1();
}

void doTest1() {
  testWidgets('testFeatureX', (tester) async {
    // remove 'await' if your main() is not asynchronous
    app.main();
    await tester.pumpAndSettle();
    // await tester.pumpWidget(app.MyApp());
    final tf = find.byKey(Key('tfs'));
    final button = find.byKey(Key('float'));

    // await tester.runAsync(() async {
    // await tester.showKeyboard(tf);
    // TextField textField = tester.widget(tf);
    // // expect(textField.controller!.text, equals(null));
    // await tester.pump(new Duration(milliseconds: 4000));
    await tester.enterText(tf, 'text');
    // await tester.pumpAndSettle();
    // expect(find.text('text'), findsOneWidget);
    await Future.delayed(Duration(seconds: 1));
    // await tester.pumpAndSettle();
    // await tester.tap(button);
    await tester.tap(button);
    await tester.pumpAndSettle();
    await Future.delayed(Duration(seconds: 1));
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.tap(button);
    // await tester.
    // await Future.delayed(Duration(seconds: 2));
    // await tester.tap(button);
    // await tester.pump();
    // expect();
    print('done');
    // });
  });
}
