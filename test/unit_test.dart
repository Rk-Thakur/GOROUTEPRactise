
// import 'package:application/counter.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main(){

//   late Counter counter;
//   //pre test
//   setUp(() {
//   });
//   setUp(() {
//     counter = Counter();
//   });

//   //setup is callled before every test
//   //setupAll is called before all the tests


//   //setup -> test -> setup -> test
//   //setupAll -> test -> test

// //testing
// group('Counter', () {

//   test('Value should start at 0', (){
//     expect(Counter().value, 0);
//   } );
//     test('Increment Testing value should be at 1', () {
//     //setup or arrange
//     // Counter counter = Counter(value: 5);

//     //do or act
//     counter.increment(); 
//     //test or assert
//     expect(counter.value, 1);
//   });

//   test('Decrement Testing value should be at -1', () {
//     //setup
//     // Counter counter = Counter(value: 5);

//     //do
//     counter.decrement();
//     //test
//     expect(counter.value, -1);
//   });


//   test('given counter class when it is reset then the value of count should be 0 ', () {
//     //do
//     counter.reset();

//     //expect
//     expect(counter.value, 0);
//   });
//   });



//     //post test
//   // tearDown(() => null);
//   // tearDownAll(() => null);

//   // test -> teardown -> test -> tearDown 
//   // test -> test -> tearDownAll 
// }
