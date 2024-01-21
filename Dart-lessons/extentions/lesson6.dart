// extensions - extension EXT_NAME on TYPE (Object (int, double, String, ...))
// File - File(path)
// jsonDecode, jsonEncode
// Map difference btw. .from() and .of()

import 'dart:convert';
import 'dart:io';

extension IntExtension on int {
  int toNegativePower() {
    return -(this * this);
  }
}

extension StringExtension on String {
  String printFirstLetter() {
    return this[0];
  }
}

void runExtension() {
  final int a = 5;
  final String name = 'qwerty';
  print(a.toNegativePower());
  print(name.printFirstLetter());
}

void readFromFile() {
  final File file = File('files/test.txt');
  final List<String> lines = file.readAsLinesSync();
  for (String line in lines) {
    print(line);
  }
}

void writeToFile(String content) {
  final File file = File('files/new.json');
  file.writeAsStringSync(content);
}

void deleteFile() {
  final File file = File('files/new.txt');
  file.deleteSync();
}

void writeListToFile(List<int> squaredList, String filePath) {
  var file = File(filePath);
  // file.writeAsStringSync(squaredList.join('\n'));
  var writeInfo = file.openWrite();
  for (var number in squaredList) {
    writeInfo.write('$number\n');
  }
  writeInfo.close();
}

void readFromJson() {
  var file = File('files/users.json');
  final String strJsonData = file.readAsStringSync();
  final List<dynamic> data = jsonDecode(strJsonData) as List<dynamic>;
  for (dynamic json in data) {
    final Map<String, dynamic> mapJson = json as Map<String, dynamic>;
    print(mapJson["id"]);
    print(mapJson["firstname"]);
    print(mapJson["lastname"]);
    print(mapJson["email"]);
    print(mapJson["birthDate"]);
    final Map<String, dynamic> userInfoJson = Map<String, dynamic>.from({
      'id': mapJson['id'],
      'firstname': mapJson["firstname"],
      'lastname': mapJson["lastname"],
      'email': mapJson["email"]
    });
    final String strUserInfoJson = jsonEncode(userInfoJson);
    writeToFile(strUserInfoJson);
    break;
  }
}

void writeUserInfo(Map<String, dynamic> info) {
  final String strUserInfoJson = jsonEncode(info);
  writeToFile(strUserInfoJson);
}

void main() {
  final String username = stdin.readLineSync() ?? '';
  final String lastname = stdin.readLineSync() ?? '';
  writeUserInfo({'username': username, 'lastname': lastname});
}