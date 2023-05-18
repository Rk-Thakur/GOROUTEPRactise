import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                String name = 'Go Router';
                print('/second/$name');
                context.go('/second/$name');
              },
              child: const Text("Move to Second Page"))),
    );
  }
}
