import 'dart:async';

Future<void> listenToStream(Stream<int> stream) async {
  await for (int event in stream) {
    print(event);
  }
}

void main() async {
  // Single subscription and Broadcast
  // Single subscription stream = StreamController()
  // 2 types of listenning - stream.listen & await for
  final StreamController<int> controller = StreamController<int>();
  controller.sink.add(1);
  // listenToStream(controller.stream);
  controller.sink.add(1);
  // controller.stream.listen((int event) {
  //   print(event);
  // });
  await for (int event in controller.stream) {
    print(event);
  }

  // Broadcast stream
  final StreamController<int> controller2 = StreamController<int>.broadcast();
  controller2.stream.listen((int event) {
    print('CONTROLLER - $event');
  });
  controller2.sink.add(2);
  await listenToStream(controller2.stream);
  controller2.sink.add(2);
  controller2.sink.add(2);
}
