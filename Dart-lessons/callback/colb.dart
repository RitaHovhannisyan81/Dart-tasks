// void performOperation(int Function() operation) {
// 	  int result = operation();
// 	  print('result: $result');
// 	}

//import 'dart:io';
enum Day {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

Day getDayOfWeek(int day) {
  switch (day) {
    case 1:
      return Day.Monday;
    case 2:
      return Day.Tuesday;
    case 3:
      return Day.Wednesday;
    case 4:
      return Day.Thursday;
    case 5:
      return Day.Friday;
    case 6:
      return Day.Saturday;
    case 7:
      return Day.Sunday;
    default:
      throw ArgumentError('Invalid day. Please provide a number between 1 and 7.');
  }
}

void checkWorkingDay(int userDay, Function(Day) callback) {
  Day dayOfWeek = getDayOfWeek(userDay);
  callback(dayOfWeek);
}

void main() {
  print("Enter the number of day of week");
  //int? userDay = int.tryParse(stdin.readLineSync()!);
  //checkWorkingDay(userDay,) {
    // if (day == Day.Saturday || day == Day.Sunday) {
    //   print('Today is a non-working day.');
    // } else {
    //   print('Today is a working day.');
    // }
  }
