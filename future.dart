import 'dart:async';
// Future<int> getSum(int n) async {
//   int sum = 0;
//   for (var i = 0; i < n; i++) {
//     sum += i;
//     await Future.delayed(Duration(seconds: 3));
//     print(sum);
//   }
// }

// void main() {
//  getSum (10);
//   print('End');
// }

// import 'dart:async';

// Future<String> createOrderMessage() async {
//   var order = await fetchUserOrder();
//   return 'Your order is: $order';
// }

// Future<String> fetchUserOrder() => Future.delayed(
//       const Duration(seconds: 2),
//       () => 'Large Latte',
//     );

// Future<void> main() async {
//   print('Fetching user order...');
//   print(await createOrderMessage());
// }
///////////////////////////
void listenToStream(Stream<int> stream) {
  stream.listen((event) {
    print(event * 2);
  });
}

void main() {
  //single subscription and Broadcast
  //single subscription stream = StreamController()
  //2 types of listenning -stream.listen & await for
  final StreamController<int> controller = StreamController<int>();
  controller.stream.listen((int event) {
    print(event);
  });
  controller.sink.add(2);
  //listenToStream(controller.stream);
  controller.sink.add(2);
}
