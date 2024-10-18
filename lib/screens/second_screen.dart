import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'second_screen',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
