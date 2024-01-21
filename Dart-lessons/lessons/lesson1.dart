/* garbage collector
 * */

bool isPalindrome() {
  String res = "aaasss".split('').reversed.join();
  return "sssaaa" == res;
}

void main() {
//   Object
//   final, const
//   null safety - ?, ??, ?., !, late
//   int, double = num
//   String methods
//   dynamic
//   as
//   List, Set, Map



//   Data Structures
  final List<int> list = [];
  // List<int>.empty(growable: true);
  list.add(6);
  list.add(4);
  list.add(1);
  list.add(2);
  list[2] = 245435;

  final Set<int> set = <int>{};
  set.add(1);
  set.add(1);
  set.add(3);
  set.add(4);
  print(set);

  final Map<String, int> map = {};
  map.addAll({'key': 1});
  map['key'] = 4;

  print(map);
}