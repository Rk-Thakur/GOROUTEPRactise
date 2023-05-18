import 'package:application/user/user_model.dart';
import 'package:application/user/user_respository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';


class MockHTTPClient extends Mock implements Client  {}
void main() {
  late UserRepository userRepository;
  late MockHTTPClient mockHTTPClient;
  setUp(() {
    mockHTTPClient = MockHTTPClient();
    userRepository=UserRepository(mockHTTPClient);
  });
  group('User Respository', () {
    group('getUserFunction', () { 
      test('Given user Repository class when getUser functionis called and status code is 200 then a usermodel should be returned', () async {
          //arrange
          when(()=>mockHTTPClient.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'),),).thenAnswer((inncovation ) async{
            return Response('''{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}''', 200);
          });
          //act
          final response = await userRepository.getUser();
          //assert
          expect(response, isA<User>());

      });


      test('Check whether the status code is not 200 then a expection should be thrown', () async{
        //arrange not required
          when(()=>mockHTTPClient.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'),),).thenAnswer((invocation)async => Response('{}', 500));
          
     //act
        final response =  userRepository.getUser();

        //assert
        expect(response, throwsException);
      });
    });

  });
}