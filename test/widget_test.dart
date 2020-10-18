import 'package:flutter_beginner_dicoding/splashscreen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(SplashScreen());
  });
}
