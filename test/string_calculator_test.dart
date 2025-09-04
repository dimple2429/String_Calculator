import 'package:calculator/string_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final calc = StringCalculator();

  test('empty string returns 0', () => expect(calc.add(''), 0));
  test('two numbers seperated by comma', () => expect(calc.add('1,5'), 6));
  test('multiple numbers', () => expect(calc.add('1,2,3,4'), 10));
  test('support newline delimiter', () => expect(calc.add('1\n2,3'), 6));


}
