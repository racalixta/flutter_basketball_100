import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('B-100'),
        backgroundColor: Colors.deepPurple[600],
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
