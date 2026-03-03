import 'package:flutter_test/flutter_test.dart';
import 'package:cse489_assignment2/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(MyApp());

    // Just check that the app builds without crashing
    expect(find.byType(MyApp), findsOneWidget);
  });
}
