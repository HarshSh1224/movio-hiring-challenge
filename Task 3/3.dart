import 'dart:io';
import 'dart:math';

void main() {
  print('Enter a number : ');
  String? input = stdin.readLineSync();

  if (int.tryParse(input!) == null) {
    // Validating the input
    print('Invalid Input!');
  } else {
    int number = int.parse(input);
    if (input.length & 1 != 0) {
      // In case user enters a number containing odd number of digits, then drop the last digit
      number = number ~/ 10;
    }
    int answer = 1;
    while (number > 0) {
      int lastDigit = number % 10;
      number = number ~/ 10;
      int secondLast = number % 10;
      number = number ~/ 10;

      answer *= pow(secondLast, lastDigit) as int;
    }
    print(answer);
  }
}
