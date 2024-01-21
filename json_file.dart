import 'dart:convert';
import 'dart:io';
void main() async {
  File file = File('user.json');
  final String fileContent = await file.readAsString();
  // jsonDecode, jsonEncode
  final List<dynamic> decoded = jsonDecode(fileContent) as List<dynamic>;
  for (var element in decoded) {
    final Map<String, dynamic> value = element as Map<String, dynamic>;
    
    print('${value['firstname'] ?? ''} ${value['lastname'] ?? ''}');
  }
}



//asinxron Stream ov


// Stream<String> streamFunc() async* {
//   File file = File('user.json');
//   final String fileContent = await file.readAsString();
//   final List<dynamic> decoded = jsonDecode(fileContent) as List<dynamic>;
//   for (var element in decoded) {
//     final Map<String, dynamic> val = element as Map<String, dynamic>;
//     String fullName = (val['username'] ?? '') + " " + (val['lastname'] ?? '');
//     yield fullName;
//   }
// }

// void main() {
//   Stream<String> stream = streamFunc();
//   stream.listen((event) {
//     print(event);
//   });
// }