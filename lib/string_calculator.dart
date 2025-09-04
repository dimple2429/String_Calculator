class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String nums = numbers;
    List<String> delimiters = [',', '\n'];

    if (nums.startsWith('//')) {
      final index = nums.indexOf('\n');
      final delim = nums.substring(2, index);
      delimiters = [delim];
      nums = nums.substring(index + 1);
    }

    final pattern = delimiters.map(RegExp.escape).join('|');
    final parts = nums.split(RegExp(pattern));
    final ints = parts.where((p) => p.isNotEmpty).map(int.parse).toList();

    final negatives = ints.where((i) => i < 0).toList();
    if (negatives.isNotEmpty) {
      throw FormatException('Negative numbers not allowed: ${negatives.join(',')}');
    }

    return ints.fold(0, (a, b) => a + b);

  }



}