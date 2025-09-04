class StringCalculator {
  int? add(String? numbers) {

    ///1. If number is null or empty = return 0
    if (numbers == null || numbers.isEmpty) return 0;

    String nums = numbers;
    ///2. for comma and new line
    List<String> delimiters = [',', '\n'];

    ///3. custom delimiter
    if (nums.startsWith('//')) {
      final index = nums.indexOf('\n');
      final delimit = nums.substring(2, index);
      nums = nums.substring(index + 1);
      delimiters = [delimit];
    }


    ///4. split numbers into delimiters
    final pattern = delimiters.map(RegExp.escape).join('|');
    final parts = nums.split(RegExp(pattern));


    ///5. convert into int
    final numbersList = <int>[];
    for (final p in parts) {
      if (p.trim().isEmpty) continue;
      numbersList.add(int.parse(p));
    }

    ///6. check negatives
    final negatives = numbersList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw FormatException('Negative numbers not allowed: ${negatives.join(',')}');
    }

    ///7. extra numbers bigger than 1000
    return numbersList.where((n) => n <= 1000).fold(0, (a , b) => a! + b);


  }
}
