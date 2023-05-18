import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text("Move to First Page"))),
    );
  }
}
