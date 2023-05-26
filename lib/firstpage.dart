import 'package:application/secondpage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final key = GlobalKey<FormState>();
  final name = TextEditingController();
  final copy = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
              key: key,
              child: Column(
                children: [
                  TextFormField(
                    onTap: () {
                      name.text = name.text;
                    },
                    controller: name,
                    decoration: const InputDecoration(hintText: 'Text'),
                  ),
                ],
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage()));
              },
              child: const Text("Second Screen"))
        ],
      ),
    );
  }
}
