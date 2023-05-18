import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  final String name;
  const SecondPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                context.go('/third');
              },
              child: const Text("Move to Third Page"))),
    );
  }
}
