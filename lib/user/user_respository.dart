// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:http/http.dart' as http;

import 'package:application/user/user_model.dart';
class UserRepository {
  late final http.Client client;
  UserRepository(
     this.client,
  );

  Future<User> getUser() async{
    final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

    if(response.statusCode ==200){
      return User.fromJson(response.body);
    }
    throw Exception('Some Error Occured');
  }
}
