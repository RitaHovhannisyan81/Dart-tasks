import 'dart:io';

void main() {
  // Data structures:
  // List, Set, Map
  // Queue (FIFO) <=> (HOME ->) Stack(LIFO), LinkedList
  // while, do, for, for in, do while

  final List<int> list = List.generate(10, (i) {
    return i * 2;
  });

  for (var element in list) {
    print(element);
  }

  final List<int> myList = [];

  for (var i = 0; i < 10; i++) {
    print(myList[i]);
  }

  print(list);
  print(myList);

  stdin.readLineSync();

  // final Set<String> set = {};
  // final Map<String, double> map = {};
}
