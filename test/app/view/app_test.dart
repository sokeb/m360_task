import 'package:flutter_test/flutter_test.dart';
import 'package:m360_task/app/app.dart';
import 'package:m360_task/modules/splash/view/splash_view.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(SplashView), findsOneWidget);
    });
  });
}
