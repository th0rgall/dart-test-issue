import 'package:dart_test_issue/dart_test_issue.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  late int a;
  late int b;
  late int result;

  setUp(() {
    a = 1;
    b = 2;
    result = a + b;
  });

  test('calculate late variable', () {
    expect(result, 3);
  });
}
