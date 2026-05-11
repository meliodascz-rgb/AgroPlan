import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agroplan/app.dart';

void main() {
  testWidgets('AgroPlan app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: AgroPlanApp()));
  });
}
