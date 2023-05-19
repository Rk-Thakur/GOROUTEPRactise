import 'package:application/domain/meme_controller.dart';
import 'package:application/locator.dart';
import 'package:flutter/material.dart';

import '../domain/model/meme_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Meme? visibleMeme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: visibleMeme != null
              ? Center(
                  child: Card(
                    child: Column(
                      children: [
                        Text(
                          "Category ${visibleMeme!.category}",
                          style: const TextStyle(fontSize: 36),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Image.network(visibleMeme!.imageUrl),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text('Caption: ${visibleMeme!.caption}'),
                      ],
                    ),
                  ),
                )
              : const Center(
                  child: Text("Meme not Loaded"),
                )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Meme meme = await locator.get<MemeDomainControler>().getNextMeme();
          setState(() {
            visibleMeme = meme;
          });
        },
        child: const Icon(Icons.skip_next),
      ),
    );
  }
}
