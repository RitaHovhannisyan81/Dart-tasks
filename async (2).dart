import 'dart:async';
import 'dart:math';

Future<int> getSum(int n) async {
  int sum = 0;
  for (var i = 0; i < n; i++) {
    sum += i;
    await Future.delayed(Duration(seconds: 3));
    print(sum);
  }
  return sum;
}

Future<void> printF(int n) async {
  for (var i = 0; i < n; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
}

// Future<int> getSumFuture(int n) async {
//   int sum = 5;
//   for (var i = 0; i < n; i++) {
//     sum += i;
//     return sum;
//   }
//   return 0;
// }

Stream<int> getSumStream(int n) async* {
  int sum = 0;
  for (var i = 0; i < n; i++) {
    sum += i;
  }
  yield sum;
}

Stream<String> getUserNameStream() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Barev';
  await Future.delayed(Duration(seconds: 1));
  yield 'Marley';
  await Future.delayed(Duration(seconds: 1));
  yield 'Jack';
}

// Future<String> getUserNameFuture() async {
//   await Future.delayed(Duration(seconds: 1));
//   return 'Bob';
//   await Future.delayed(Duration(seconds: 1));
//   return 'Marley';
//   await Future.delayed(Duration(seconds: 1));
//   return 'Jack';
// }

List<int> getRandomValues(int n) {
  final List<int> values = [];
  final Random random = Random();
  for (var i = 0; i < n; i++) {
    values.add(random.nextInt(100));
  }
  return values;
}

Stream<int> getRandomValue(int n) async* {
  final Random random = Random();
  for (var i = 0; i < n; i++) {
    yield random.nextInt(100);
  }
}

void main() async {
  // final int res = await getSumFuture(10);
  // print('Future:');
  // print(res);
  // print('Stream:');
  // final Stream<int> streamRes = getSumStream(10);
  // streamRes.listen((int event) {
  //   print(event);
  // });

  // final Future<String> name = getUserNameFuture();
  // print(await name);

  // final Stream<String> nameStream = getUserNameStream();
  // nameStream.listen((String event) {
  //   print(event);
  // });

  // StreamController
  // Single Subscription Stream
  final StreamController<int> controller = StreamController<int>();
  controller.stream.listen((int event) {
    print(event);
  });
  controller.sink.add(1);
  controller.close();




  print(getRandomValues(10));
  final List<int> values = [];
  getRandomValue(10).listen((event) {
    values.add(event);
  }, onDone: () => print(values));
}
