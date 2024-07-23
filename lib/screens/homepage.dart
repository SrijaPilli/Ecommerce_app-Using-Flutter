import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});  // Convert key to super.key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),  // Use const where applicable
      ),
      body: const Center(
        child: Text('Welcome to the Home Page'),  // Use const where applicable
      ),
    );
  }
}

