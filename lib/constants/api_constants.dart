import 'package:application/constants/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiConstants {
  final dio = Dio();
  Future<Either<dynamic, Failure>> getCocktail() async {
    var resp =
        await dio.get('https://www.thecocktaildb.com/api/json/v1/1/random.php');
    var drinks = resp.data['drinks'];
    print(resp.data);
    return Left(drinks[0]);
  }
}
