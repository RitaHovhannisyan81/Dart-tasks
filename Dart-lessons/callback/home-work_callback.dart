import 'dart:io';
enum Week { 
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}
  
Week getDay(int? week){
  switch (week) {
    case 1:
      return Week.Monday;
    case 2:
      return Week.Tuesday;
    case 3:
      return Week.Wednesday;
    case 4:
      return Week.Thursday;
    
    case 5:
      return Week.Friday;

    case 6:
      return Week.Saturday;

    case 7:
      return Week.Sunday;
      default:
    throw ArgumentError('Invalid day. Please provide a number between 1 and 7.');
  
  }
}


// void main() {
//   print("Enter the number of day of week");
//   String? dayOfWeek = stdin.readLineSync();
//   int userDay = dayOfWeek;
//   //Week dayOfWeek = getDay(userDay);
//   print('The day of the week is: $dayOfWeek');
// }
void performOperation(int userDay()) {
  print("Enter the number of day of week");
  String? dayOfWeek = stdin.readLineSync();

	 // int userDay = dayOfWeek();
	  print('result: $dayOfWeek');
	}




// Write a dart function that takes a day(integer - user input) and returns the week(enum) by day.
// Then write a dart function which checks a week for working/non-workings days and print "Today is working(non-working) day"(if it is Sat and Sunday it's not working day). Consider to write with callback. Give above function as a parameter of this function and execute.
// NOTE: you can use functions above and write a logic inside them. 
