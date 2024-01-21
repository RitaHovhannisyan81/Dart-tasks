import 'dart:async';
import 'dart:math';

Future<void> printF(int n) async {
  for (var i = 0; i < n; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
}

List<int> getRandomValues(int n) {
  final List<int> values = [];
  final Random random = Random();
  for (var i = 0; i < n; i++) {
    values.add(random.nextInt(100));
  }
  return values;
}


void main() async {

  print(getRandomValues(10));
  final List<int> values = [];
  getRandomValue(10).listen(event) {
    values.add(event);
  }
}
