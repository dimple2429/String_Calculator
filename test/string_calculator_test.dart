import 'package:calculator/string_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final calc = StringCalculator();

  test('empty string returns 0', () => expect(calc.add(''), 0));

}
