

void main() {
  // list/set functions
  // map functions

  final List<int> listValues = [1, 2, 3, 3, 3];
  // print(listValues);
  final Set<int> values = listValues.toSet();
  // for (var value in values) {
  //   print(value);
  // }

  // final List<int> evens =
  //     values.where((int element) => element % 2 != 0).toList();
  // evens.removeWhere((int element) => element == 2);
  // print('Result: ${evens}');

  final List<Map<String, dynamic>> ids = values.map((e) {
    return {e.toString(): e * 2};
  }).toList();

  print(ids);

  final Map<String, dynamic> user = {'username': 'Gor', 'age': 12};
  final List<Map<String, dynamic>> users =
      user.entries.map((MapEntry<String, dynamic> entry) {
    return {entry.key + ' 1': entry.value * 2};
  }).toList();
  print(users);

  final List<Map<String, dynamic>> users2 = [];
  for (final MapEntry<String, dynamic> entry in user.entries) {
    users2.add({entry.key + ' 1': entry.value * 2});
  }
  print(users2);
}
