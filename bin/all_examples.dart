import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('\n' + '=' * 60);
    print('🎯 DART PROGRAMMING MASTER CHALLENGES');
    print('=' * 60);
    print('1️⃣  Even or Odd Number Checker');
    print('2️⃣  Sort Three Floating Numbers');
    print('3️⃣  Voting Eligibility Checker');
    print('4️⃣  Vowel or Consonant Checker');
    print('5️⃣  Find Min and Max of Three Numbers');
    print('6️⃣  Post/Pre Increment/Decrement Quiz');
    print('7️⃣  Age to 100 Years Calculator');
    print('8️⃣  Grade to Message Converter');
    print('9️⃣  Cylinder Volume Calculator');
    print('🔟  Number Sign Checker (Positive/Negative/Zero)');
    print('1️⃣1️⃣ Natural Numbers Sum Calculator');
    print('1️⃣2️⃣ Odd Numbers Generator');
    print('1️⃣3️⃣ Positive/Negative/Zero Counter');
    print('1️⃣4️⃣ Factorial Calculator');
    print('1️⃣5️⃣ Reverse Digits of a Number');
    print('1️⃣6️⃣ Numbers Divisible by 5 and 6 (100-1000)');
    print('1️⃣7️⃣ Prime Number Checker');
    print('0️⃣  Exit Program');
    print('=' * 60);
    stdout.write('👉 Choose an option (0-17): ');
    
    String? choice = stdin.readLineSync();
    
    switch (choice) {
      case '1':
        evenOrOddChecker();
        break;
      case '2':
        sortThreeNumbers();
        break;
      case '3':
        votingEligibility();
        break;
      case '4':
        vowelOrConsonant();
        break;
      case '5':
        findMinMax();
        break;
      case '6':
        incrementDecrementQuiz();
        break;
      case '7':
        ageTo100Calculator();
        break;
      case '8':
        gradeConverter();
        break;
      case '9':
        cylinderVolume();
        break;
      case '10':
        numberSignChecker();
        break;
      case '11':
        naturalNumbersSum();
        break;
      case '12':
        oddNumbersDisplay();
        break;
      case '13':
        countPosNegZero();
        break;
      case '14':
        factorialCalculator();
        break;
      case '15':
        reverseDigits();
        break;
      case '16':
        divisibleBy5and6();
        break;
      case '17':
        primeNumberChecker();
        break;
      case '0':
        print('\n👋 Thank you for using Dart Master Program! Goodbye!');
        return;
      default:
        print('\n❌ Invalid option! Please choose a number between 0 and 17.');
    }
    
    print('\n' + '─' * 60);
    stdout.write('Press Enter to continue...');
    stdin.readLineSync();
  }
}

// ===================== CHALLENGE 1 =====================
void evenOrOddChecker() {
  print('\n--- EVEN OR ODD NUMBER CHECKER ---');
  stdout.write('Enter a number: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');
  
  if (number == null) {
    print('❌ Invalid input!');
    return;
  }
  
  // Using modulus operator (%) and ternary operator
  String result = (number % 2 == 0) ? 'YES' : 'NO';
  print('\n📊 Result: $result');
  print('🔍 Explanation: $number % 2 = ${number % 2} (remainder)');
}

// ===================== CHALLENGE 2 =====================
void sortThreeNumbers() {
  print('\n--- SORT THREE FLOATING NUMBERS ---');
  
  List<double> numbers = [];
  
  for (int i = 1; i <= 3; i++) {
    stdout.write('Enter number $i: ');
    double? num = double.tryParse(stdin.readLineSync() ?? '');
    if (num == null) {
      print('❌ Invalid input! Please enter numbers only.');
      return;
    }
    numbers.add(num);
  }
  
  // Sorting using comparison operators
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] > numbers[j]) {
        // Swap using arithmetic assignment
        double temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  
  print('\n📊 Sorted numbers (ascending):');
  for (double num in numbers) {
    print('  ➤ $num');
  }
}

// ===================== CHALLENGE 3 =====================
void votingEligibility() {
  print('\n--- VOTING ELIGIBILITY CHECKER ---');
  stdout.write('Enter your age: ');
  int? age = int.tryParse(stdin.readLineSync() ?? '');
  
  if (age == null || age < 0) {
    print('❌ Invalid age!');
    return;
  }
  
  // Using comparison operator (>=)
  if (age >= 21) {
    print('\n✅ Congratulation! You are eligible for casting your vote!');
    if (age > 21) {
      print('📝 You have been eligible for ${age - 21} years now.');
    }
  } else {
    print('\n❌ Sorry! You need ${21 - age} more years to be eligible for voting.');
  }
}

// ===================== CHALLENGE 4 =====================
void vowelOrConsonant() {
  print('\n--- VOWEL OR CONSONANT CHECKER ---');
  stdout.write('Enter an alphabet: ');
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty || input.length > 1) {
    print('❌ Please enter a single character!');
    return;
  }
  
  String char = input.toLowerCase();
  
  // Using logical operators (||)
  if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
    print('\n🔊 The alphabet "$input" is a VOWEL.');
  } else if (char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) {
    print('\n🔇 The alphabet "$input" is a CONSONANT.');
  } else {
    print('\n❌ "$input" is not an alphabet!');
  }
}

// ===================== CHALLENGE 5 =====================
void findMinMax() {
  print('\n--- FIND MINIMUM AND MAXIMUM ---');
  
  List<double> numbers = [];
  
  for (int i = 1; i <= 3; i++) {
    stdout.write('Enter number $i: ');
    double? num = double.tryParse(stdin.readLineSync() ?? '');
    if (num == null) {
      print('❌ Invalid input!');
      return;
    }
    numbers.add(num);
  }
  
  // Using conditional/ternary operator to find min and max
  double max = numbers[0];
  double min = numbers[0];
  
  for (int i = 1; i < numbers.length; i++) {
    max = (numbers[i] > max) ? numbers[i] : max;
    min = (numbers[i] < min) ? numbers[i] : min;
  }
  
  print('\n📊 Results:');
  print('  ➤ Maximum = $max');
  print('  ➤ Minimum = $min');
}

// ===================== CHALLENGE 6 =====================
void incrementDecrementQuiz() {
  print('\n--- POST/PRE INCREMENT/DECREMENT QUIZ ---');
  print('📝 Guess the output before running!');
  
  int x = 3;
  int y = 2;
  int z = x++;  // Post-increment: z gets x's old value (3), then x becomes 4
  int w = ++y;  // Pre-increment: y becomes 3, then w gets that value (3)
  
  print('\n🔍 Code:');
  print('  int x = 3;');
  print('  int y = 2;');
  print('  int z = x++;  // Post-increment');
  print('  int w = ++y;  // Pre-increment');
  
  print('\n📊 Results:');
  print('  ➤ x = $x');
  print('  ➤ y = $y');
  print('  ➤ z = $z');
  print('  ➤ w = $w');
  
  print('\n💡 Explanation:');
  print('  • x++ (post-increment): First assigns to z (3), then increments x to 4');
  print('  • ++y (pre-increment): First increments y to 3, then assigns to w (3)');
}

// ===================== CHALLENGE 7 =====================
void ageTo100Calculator() {
  print('\n--- AGE TO 100 YEARS CALCULATOR ---');
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
  stdout.write('Enter your age: ');
  int? age = int.tryParse(stdin.readLineSync() ?? '');
  
  if (name == null || name.isEmpty || age == null || age < 0) {
    print('❌ Invalid input!');
    return;
  }
  
  int yearsTo100 = (age > 100) ? 0 : 100 - age;
  
  if (yearsTo100 == 0) {
    print('\n🎉 Hi $name, you are already 100 years old or above! Congratulations!');
  } else {
    print('\n👋 Hi $name, you have $yearsTo100 years left to be 100 years old!');
  }
}

// ===================== CHALLENGE 8 =====================
void gradeConverter() {
  print('\n--- GRADE TO MESSAGE CONVERTER ---');
  stdout.write('Enter your grade (A, B, C, D, F): ');
  String? grade = stdin.readLineSync();
  
  if (grade == null || grade.isEmpty) {
    print('❌ Invalid grade!');
    return;
  }
  
  String upperGrade = grade.toUpperCase();
  String message;
  
  // Using switch statement
  switch (upperGrade) {
    case 'A':
      message = '🌟 Excellent! Outstanding performance!';
      break;
    case 'B':
      message = '👍 Outstanding! Very good work!';
      break;
    case 'C':
      message = '📚 Good! Keep improving!';
      break;
    case 'D':
      message = '💪 Can Do Better! Study harder next time!';
      break;
    case 'F':
      message = '❌ Failed! Please seek help and retake the course!';
      break;
    default:
      message = '⚠️ Invalid Grade! Please enter A, B, C, D, or F only.';
  }
  
  print('\n📊 Result: "$message"');
}

// ===================== CHALLENGE 9 =====================
void cylinderVolume() {
  print('\n--- CYLINDER VOLUME CALCULATOR ---');
  stdout.write('Enter the radius of cylinder: ');
  double? radius = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Enter the length of cylinder: ');
  double? length = double.tryParse(stdin.readLineSync() ?? '');
  
  if (radius == null || length == null || radius < 0 || length < 0) {
    print('❌ Invalid input! Radius and length must be positive numbers.');
    return;
  }
  
  const double pi = 3.14159;
  
  // Using arithmetic operators
  double area = radius * radius * pi;
  double volume = area * length;
  
  print('\n📊 Results:');
  print('  ➤ Area = ${area.toStringAsFixed(4)}');
  print('  ➤ Volume = ${volume.toStringAsFixed(4)}');
}

// ===================== CHALLENGE 10 =====================
void numberSignChecker() {
  print('\n--- NUMBER SIGN CHECKER ---');
  stdout.write('Enter an integer: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');
  
  if (number == null) {
    print('❌ Invalid input!');
    return;
  }
  
  String sign;
  
  // Using if-else with comparison operators
  if (number > 0) {
    sign = 'POSITIVE';
  } else if (number < 0) {
    sign = 'NEGATIVE';
  } else {
    sign = 'ZERO';
  }
  
  print('\n📊 Result: "$sign"');
}

// ===================== CHALLENGE 11 =====================
void naturalNumbersSum() {
  print('\n--- NATURAL NUMBERS SUM CALCULATOR ---');
  stdout.write('Enter number of terms (n): ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');
  
  if (n == null || n <= 0) {
    print('❌ Please enter a positive integer!');
    return;
  }
  
  int sum = 0;
  List<int> numbers = [];
  
  // Using for loop to calculate sum of first n natural numbers
  for (int i = 1; i <= n; i++) {
    numbers.add(i);
    sum += i;  // Using compound assignment operator (+=)
  }
  
  print('\n📊 The first $n natural number(s) is/are:');
  print('  ➤ ${numbers.join(' ')}');
  print('  ➤ The Sum of Natural Number upto $n terms: $sum');
  
  // Bonus: Show formula result
  int formulaSum = n * (n + 1) ~/ 2;
  print('  💡 (Formula check: $formulaSum)');
}

// ===================== CHALLENGE 12 =====================
void oddNumbersDisplay() {
  print('\n--- ODD NUMBERS GENERATOR ---');
  stdout.write('Input number of terms: ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');
  
  if (n == null || n <= 0) {
    print('❌ Please enter a positive integer!');
    return;
  }
  
  List<int> oddNumbers = [];
  int sum = 0;
  
  // Using for loop with increment (i += 2) to generate odd numbers
  for (int i = 1; oddNumbers.length < n; i += 2) {
    oddNumbers.add(i);
    sum += i;
  }
  
  print('\n📊 Results:');
  print('  ➤ The odd numbers are: ${oddNumbers.join(' ')}');
  print('  ➤ The Sum of odd Natural Numbers upto $n terms: $sum');
}

// ===================== CHALLENGE 13 =====================
void countPosNegZero() {
  print('\n--- POSITIVE/NEGATIVE/ZERO COUNTER ---');
  stdout.write('How many numbers do you want to check? ');
  int? count = int.tryParse(stdin.readLineSync() ?? '');
  
  if (count == null || count <= 0) {
    print('❌ Please enter a valid positive number!');
    return;
  }
  
  int positiveCount = 0;
  int negativeCount = 0;
  int zeroCount = 0;
  
  print('Enter $count number(s):');
  
  // Using for loop with user input
  for (int i = 0; i < count; i++) {
    stdout.write('Number ${i + 1}: ');
    int? num = int.tryParse(stdin.readLineSync() ?? '');
    
    if (num == null) {
      print('❌ Invalid input! Please restart and enter numbers only.');
      return;
    }
    
    if (num > 0) {
      positiveCount++;
    } else if (num < 0) {
      negativeCount++;
    } else {
      zeroCount++;
    }
  }
  
  print('\n📊 Summary:');
  print('  ➤ You entered $positiveCount positive number(s)');
  print('  ➤ You entered $negativeCount negative number(s)');
  print('  ➤ You entered $zeroCount zero(s)');
}

// ===================== CHALLENGE 14 =====================
void factorialCalculator() {
  print('\n--- FACTORIAL CALCULATOR ---');
  stdout.write('Enter a number to find its factorial: ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');
  
  if (n == null || n < 0) {
    print('❌ Please enter a non-negative integer!');
    return;
  }
  
  int factorial = 1;
  String calculation = '';
  
  // Using for loop to calculate factorial
  for (int i = 1; i <= n; i++) {
    factorial *= i;  // Using compound multiplication assignment
    if (calculation.isEmpty) {
      calculation = '$i';
    } else {
      calculation += ' × $i';
    }
  }
  
  print('\n📊 Factorial of $n ($n!):');
  print('  ➤ $calculation = $factorial');
  
  // Special case for 0!
  if (n == 0) {
    print('  💡 Note: 0! = 1 by definition');
  }
}

// ===================== CHALLENGE 15 =====================
void reverseDigits() {
  print('\n--- REVERSE DIGITS OF A NUMBER ---');
  stdout.write('Enter an integer: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');
  
  if (number == null) {
    print('❌ Invalid input!');
    return;
  }
  
  bool isNegative = number < 0;
  int temp = number.abs();
  int reversed = 0;
  
  // Using while loop to reverse digits
  while (temp > 0) {
    int digit = temp % 10;      // Get last digit using modulus operator
    reversed = reversed * 10 + digit;
    temp ~/= 10;                // Remove last digit using integer division
  }
  
  if (isNegative) {
    reversed = -reversed;
  }
  
  print('\n📊 Original number: $number');
  print('  ➤ Reversed number: $reversed');
  print('  💡 Hint: Each iteration removes one digit using division and extracts using modulus');
}

// ===================== CHALLENGE 16 =====================
void divisibleBy5and6() {
  print('\n--- NUMBERS DIVISIBLE BY 5 AND 6 (100 - 1000) ---');
  
  List<int> numbers = [];
  
  // Using for loop with range
  for (int i = 100; i <= 1000; i++) {
    // Using logical operator (&&) to check both conditions
    if (i % 5 == 0 && i % 6 == 0) {
      numbers.add(i);
    }
  }
  
  print('\n📊 Numbers from 100 to 1000 divisible by both 5 and 6:');
  print('  ➤ Found ${numbers.length} numbers');
  
  // Display numbers with proper formatting (10 per line)
  for (int i = 0; i < numbers.length; i++) {
    stdout.write('${numbers[i]}');
    if ((i + 1) % 10 == 0) {
      print('');  // New line after every 10 numbers
    } else if (i < numbers.length - 1) {
      stdout.write(', ');
    }
  }
  print('');
  
  // Bonus: First and last few numbers
  if (numbers.length > 0) {
    print('\n  💡 First number: ${numbers[0]}, Last number: ${numbers[numbers.length - 1]}');
  }
}

// ===================== CHALLENGE 17 =====================
void primeNumberChecker() {
  print('\n--- PRIME NUMBER CHECKER ---');
  stdout.write('Enter an integer: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');
  
  if (number == null || number < 2) {
    print('❌ Please enter an integer greater than or equal to 2!');
    print('   (Prime numbers are defined for numbers >= 2)');
    return;
  }
  
  bool isPrime = true;
  
  // Using for loop to check prime
  // Only need to check up to square root for efficiency
  int limit = (sqrt(number).floor());
  
  for (int i = 2; i <= limit; i++) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }
  
  print('\n📊 Result:');
  if (isPrime) {
    print('  ➤ YES, $number is a PRIME number!');
    print('  💡 $number is only divisible by 1 and itself.');
  } else {
    print('  ➤ NO, $number is NOT a prime number.');
    
    // Show a divisor to prove it's not prime
    for (int i = 2; i <= limit; i++) {
      if (number % i == 0) {
        print('  💡 $number is divisible by $i (${number} ÷ $i = ${number ~/ i})');
        break;
      }
    }
  }
}