import 'dart:convert';
import 'dart:io';

class User {
  String username;
  String password;
  String email;

  User(this.username, this.password, this.email);

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'email': email,
    };
  }

  @override
  String toString() {
    return 'User{username: $username, email: $email}';
  }
}

void main() {
  String filename = 'auth.json';

  try {
    File file = File(filename);

    List<User> userList = [];

    if (file.existsSync()) {
      // Load existing users from the JSON file
      String jsonContent = file.readAsStringSync();
      List<dynamic> jsonList = json.decode(jsonContent);

      for (var userMap in jsonList) {
        userList.add(User.fromJson(userMap));
      }
    }

    stdout.write('Choose an option for auth: Login/Registration: ');
    String option = stdin.readLineSync()?.toLowerCase() ?? '';

    if (option == 'login') {
      loginUser(userList);
    } else if (option == 'registration') {
      registerUser(userList);
    } else {
      print('Invalid option. Please choose either Login or Registration.');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}

void loginUser(List<User> userList) {
  stdout.write('Enter your username: ');
  String username = stdin.readLineSync() ?? '';
  
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync() ?? '';

  // Check if the user exists
  User? user = userList.firstWhereOrNull((u) => u.username == username && u.password == password);

  if (user != null) {
    print('Successfully logged in:\n$user');
  } else {
    print('Invalid credentials. Login failed.');
  }
}

void registerUser(List<User> userList) {
  stdout.write('Enter a new username: ');
  String newUsername = stdin.readLineSync() ?? '';

  // Check if the username already exists
  if (userList.any((user) => user.username == newUsername)) {
    print('Account already exists with the username $newUsername.');
    return;
  }

  stdout.write('Enter a new password: ');
  String newPassword = stdin.readLineSync() ?? '';

  stdout.write('Enter a new email: ');
  String newEmail = stdin.readLineSync() ?? '';

  // Check if the email already exists
  if (userList.any((user) => user.email == newEmail)) {
    print('Account already exists with the email $newEmail.');
    return;
  }

  // Create a new user
  User newUser = User(newUsername, newPassword, newEmail);
  userList.add(newUser);

  // Write the updated user list to the JSON file
  List<Map<String, dynamic>> updatedJsonList =
      userList.map((user) => user.toJson()).toList();

  String updatedJsonContent = json.encode(updatedJsonList);
  File('auth.json').writeAsStringSync(updatedJsonContent);

  print('User registration successful:\n$newUser');
}

extension IterableExtension<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) {
        return element;
      }
    }
    return null;
  }
}