import 'dart:convert';
import 'package:http/http.dart' as http;

import '../domain/model/meme_model.dart';

class MemeRepo {
  Future<Meme> getMeme() async {
    http.Response response =
        await http.get(Uri.parse('https://api.imgflip.com/get_memes'));
    print(response.body);
    Map<String, dynamic> singleMemeJson = jsonDecode(response.body);
    return Meme.fromJson(singleMemeJson);
  }
}
