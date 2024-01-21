import 'dart:async';

Future<void> getUser() async {
  await Future.delayed(Duration(seconds: 2)); // simulate
  // Imagine server is not responding
  throw TimeoutException('Server time is out');
}

void main() async {
  try {
    await getUser();
  } on TimeoutException catch (e) {
    print(e.message);
  } catch (e) {
    print(e.toString());
  }
}