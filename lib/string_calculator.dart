class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final normalized = numbers.replaceAll('\n', ',');
    final parts = normalized.split(',');
    return parts.where((p) => p.isNotEmpty).map(int.parse).fold(0, (a,b) => a + b);

  }



}