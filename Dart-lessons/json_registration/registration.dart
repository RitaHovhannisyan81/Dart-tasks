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
  String filename = 'new_user.json';

  try {
    File file = File(filename);

    List<User> userList = [];

    if (file.existsSync()) {
      // Load existing users from the JSON file
      String jsonContent = file.readAsStringSync();
      List<dynamic> jsonList = jsonDecode(jsonContent);

      for (var userMap in jsonList) {
        userList.add(User(userMap));
      }
    }

    // Prompt user for registration information
    stdout.write('Enter username: ');
    String newUsername = stdin.readLineSync() ?? '';

    // Check if the username is already taken
    if (userList.any((user) => user.username == newUsername)) {
      print('Username $newUsername is already taken. Please choose another.');
      return;
    }

    stdout.write('Enter password: ');
    String newPassword = stdin.readLineSync() ?? '';

    stdout.write('Enter email: ');
    String newEmail = stdin.readLineSync() ?? '';

    // Create a new user
    User newUser = User(newUsername, newPassword, newEmail);
    userList.add(newUser);

    // Write the updated user list to the JSON file
    List<Map<String, dynamic>> updatedJsonList =
        userList.map((user) => user.toJson()).toList();

    String updatedJsonContent = json.encode(updatedJsonList);
    file.writeAsStringSync(updatedJsonContent);

    print('User registration successful:');
    print(newUser);
  } catch (e) {
    print('An error occurred: $e');
  }
}