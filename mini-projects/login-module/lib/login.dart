import 'user.dart';

class LoginModule {
  final List<User> _users = [
    User('hadil_zr', 'password123'),
    User('jane_smith', 'jane2023'),
  ];

  // Find the user by username in the list
  User? _getUserByUsername(String username) {
    try {
      return _users.singleWhere((user) => user.username == username);
    } catch (e) {
      return null;
    }
  }

  bool login(String username, String password) {
    User? user = _getUserByUsername(username);
    if (user != null && user.password == password) {
      print('Login successful for user: ${user.username}');
      return true;
    } else {
      print('Login failed. Invalid information.');
      return false;
    }
  }
}
