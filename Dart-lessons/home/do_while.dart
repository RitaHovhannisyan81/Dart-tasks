void my_list() {
  final List<int> numbers = [];
  int i = 1;
  do {
    numbers.add(i);
    i++;
  } while (i <= 10);
  print('List elements: $numbers');
}

void main() {
  my_list();
}