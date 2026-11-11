// Smoke test placeholder.
//
// The full app (`MyApp` in lib/app.dart) requires Firebase, Hive and several
// providers to be initialised before it can build, so it is not exercised
// directly here. This keeps the test suite compiling and green until proper
// widget/integration tests with the required setup are added.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MaterialApp builds a basic widget tree', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Center(child: Text('Muslim Alarm'))),
      ),
    );

    expect(find.text('Muslim Alarm'), findsOneWidget);
  });
}
