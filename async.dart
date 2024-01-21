// import 'dart:async';
// import 'dart:math';

// Future<void> printF(int n) async {
//   for (var i = 0; i < n; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     print(i);
//   }
// }

// Future<List> getRandomValues(int n) async {
//   final List<int> values = [];
//   final Random random = Random();
//   for (var i = 0; i < n; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     values.add(random.nextInt(100));
//   }
//   return values;
// }

// void main() async {
//   final List list = await getRandomValues(5);
//   print(list);
// }

import 'dart:async';
import 'dart:math';

Stream<int> Getrandomnums(n) async* {
  Random random = Random();
  for (var i = 0; i < n; i++) {
    yield random.nextInt(100);
  }
}
void main() async {
  List<int> myl = [];
  List<int> myl1 = [];
  Getrandomnums(10).listen((event) {
  myl.add(event);
    },
  );
  await for(int stream in Getrandomnums(10)){
  myl1.add(stream);
}
  print(myl);
  print(myl1);
}
