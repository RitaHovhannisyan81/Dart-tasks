// void main() {
//   List<int> myNumbers = [1, 2, 3, 4, 5];

//   for (int number in myNumbers) {
//     print(number);
//   }
// }

////////////////
// void main() {
//   List<int> myNumbers = [1, 2, 3, 4, 5];

//   myNumbers.forEach((int number) {
//     print(number);
//   });
// }
//////////////////
// void main() {
//   var list = [2, 5, 7, 16, 32];
//   list.forEach((n) => isEvenOdd(n));
// }

// void isEvenOdd(int n) {
//   if (n % 2 == 0) {
//     print('$n is even number.');
//   } else {
//     print('$n is odd number.');
//   }
// }

/////////////////////////
// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();

//   print("Original list: $numbers");
//   print("Filtered even numbers: $evenNumbers");
// }

// //////
// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5];
//   List<String> strings = numbers.map((number) => 'Number $number').toList();
//   print(strings); // Output: [Number 1, Number 2, Number 3, Number 4, Number 5]
// }

//////
// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5];
//   int targetElement = 3;

//   if (numbers.contains(targetElement)) {
//     print("The list contains $targetElement.");
//   } else {
//     print("The list does not contain $targetElement.");
//   }
// }

////////////
// void main() {
//   List<int> list1 = [1, 2, 3];
//   List<int> list2 = [4, 5, 6];

//   List<int> concatenatedList = list1 + list2;

//   print("List 1: $list1");
//   print("List 2: $list2");
//   print("Concatenated List: $concatenatedList");
// }

//////

// void main() {
//   List<int> list1 = [1, 2, 3];
//   List<int> list2 = [4, 5, 6];

//   List<int> concatenatedList = List.from(list1)..addAll(list2);

//   print("List 1: $list1");
//   print("List 2: $list2");
//   print("Concatenated List: $concatenatedList");
// }
//////////////

// void main() {
//   List<int> numbersList = [1, 2, 3, 4, 5, 1, 2, 3];
//   Set<int> uniqueNumbersSet = numbersList.toSet();

//   print("Original List: $numbersList");
//   print("Set created from List: $uniqueNumbersSet");
// }
//////////////

// void main() {
//   Set<int> uniqueNumbersSet = {1, 2, 3, 4, 5};

//   List<int> numbersList1 = uniqueNumbersSet.toList();//առաջին մեթոդ

//   List<int> numbersList2 = List.from(uniqueNumbersSet);//երկրորդ մեթոդ

//   print("List created from Set (using toList()): $numbersList1");// toList ով արդյունքը
//   print("List created from Set (using List.from()): $numbersList2");//List.from ով արդյունքը
// }

////////
// void main() {
//   List<int> numbersList = [5, 2, 8, 1, 3];

//   // Սորտավորում է աճման կարգով և տպում
//   numbersList.sort();

//   print("Original List: $numbersList");
// }

// void main() {
//   List<int> numbersList = [5, 2, 8, 1, 3];

//   // Պահում է հին տարբերակը , հետո տպում սորտավորած աճման կարգով
//   List<int> sortedList = List.from(numbersList)..sort();

//   print("Original List: $numbersList");
//   print("Sorted List: $sortedList");
// }

////////
// void main() {
//   List<int> numbersList = [1, 2, 3, 4, 5];

//   // Խառնել լիստը
//   numbersList.shuffle();

//   print("Shuffled List: $numbersList");}


