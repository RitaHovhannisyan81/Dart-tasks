// enum Operators { add, mult, div, sub }

// num calculate(num a, num b, Operators operators) {
//   switch (operators) {
//     case Operators.add:
//       return a + b;
//     case Operators.mult:
//       return a * b;
//     case Operators.div:
//       return a / b;
//     case Operators.sub:
//       return a - b;
//   }
// }

// void main() {
//   print(calculate(5, 7, Operators.add));
// }
import 'dart:io';
enum Operators { add, mult, div, sub}
void main(){
print("Enter the first number");
String? numOne = stdin.readLineSync();
print("Enter the second number");
String? numTwo = stdin.readLineSync();

num calculate(numOne, numTwo, Operators operators) {
  switch (operators) {
    case Operators.add:
      return numOne + numTwo;
    case Operators.mult:
      return numOne * numTwo;
    case Operators.div:
      return numOne / numTwo;
    case Operators.sub:
      return numOne - numTwo;
  }
}

  print(calculate(numOne,numTwo, Operators.add));
}
