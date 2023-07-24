import 'dart:io';

import 'package:login_module/login.dart';

void main() {
  LoginModule loginModule = LoginModule();

  // Ask for login information from the user
  stdout.write('Enter your username: ');
  String username = stdin.readLineSync()!;

  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  // Check login credentials
  loginModule.login(username, password);
}
