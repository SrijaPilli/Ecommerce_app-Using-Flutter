// import 'lib';/models/user.dart
// class User {
//   final String name;
//   final String email;
//   final String phone;
//   final String password;

//   User({
//     required this.name,
//     required this.email,
//     required this.phone,
//     required this.password,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       name: json['name'],
//       email: json['email'],
//       phone: json['phone'],
//       password: json['password'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'email': email,
//       'phone': phone,
//       'password': password,
//     };
//   }
// }
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Welcome to the E-commerce App!'),
      ),
    );
  }
}

class User {
  String name;
  String email;
  String phone;
  String password;

  User({required this.name, required this.email, required this.phone, required this.password});
}

void logUserInfo(User user) {
  var logger = Logger();

  logger.i('User Name: ${user.name}');
  logger.i('User Email: ${user.email}');
  logger.i('User Phone: ${user.phone}');
  // Mask the password
  logger.i('User Password: ${'*' * user.password.length}');
}
