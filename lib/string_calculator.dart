class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final parts = numbers.split(',');
    return parts.map(int.parse).fold(0, (a, b) => a + b);



  }



}