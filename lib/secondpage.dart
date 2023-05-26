import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                    // onSaved: (String? value) {
                    //   setState(() {
                    //     copy.text = value!;
                    //   });
                    // },
                    initialValue: name.text,
                    onTap: () {
                      name.text = name.text;
                    },
                    controller: name..text = copy.text,
                    decoration: const InputDecoration(hintText: 'Text'),
                  ),
                ],
              )),
          ElevatedButton(onPressed: () {}, child: const Text("First Screen"))
        ],
      ),
    );
  }
}
