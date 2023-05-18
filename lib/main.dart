// import 'package:application/counter.dart';
// import 'package:application/user/user_respository.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//       final Counter counter = Counter();

//       final getusers = UserRepository(Client()).getUser();

//   void _incrementCounter() {
//     setState(() {

//       counter.increment();
//     });
//   }
//   void _decrementCounter() {
//     setState(() {
//       counter.decrement();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(

//         title: Text(widget.title),
//       ),
//       body: Center(

//         child: Column(

//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // const Text(
//             //   'You have pushed the button this many times:',
//             // ),
//             // Text(
//             //   counter.count.toString(),
//             //   style: Theme.of(context).textTheme.headlineMedium,
//             // ),
//             FutureBuilder(
//         future: getusers,
//         builder:(context,snapshot){
//         if(snapshot.connectionState == ConnectionState.waiting){
//           return const Center(child: CircularProgressIndicator.adaptive(),);
//         }
//         return Center(child: Text(snapshot.data!.name),);
//       } )
//           ],
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           FloatingActionButton(
//             onPressed: _incrementCounter,
//             tooltip: 'Increment',
//             child: const Icon(Icons.add),
//           ),
//           FloatingActionButton(
//             onPressed:_decrementCounter ,
//             tooltip: 'Decrement',
//             child: const Icon(Icons.minimize),
//           ),
//         ],
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// import 'package:application/user/user_model.dart';
// import 'package:application/user/user_respository.dart';
// import 'package:flutter/material.dart';

// void maiN(){
//   runApp(const MyApp());

// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(),
//       title: 'Unit Testing on API',

//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   Future<UserModel> getusers = UserRepository().getUser();
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(title:const Text("Unit Testing on API") ,),
//       body: FutureBuilder(
//         future: getusers,
//         builder:(context,snapshot){
//         if(snapshot.connectionState == ConnectionState.waiting){
//           return const Center(child: CircularProgressIndicator.adaptive(),);
//         }
//         return Center(child: Text(snapshot.data!.name!),);
//       } ),
//     );
//   }
// }

import 'package:application/router/firstpage.dart';
import 'package:application/router/secondPage.dart';
import 'package:application/router/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
  MYAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router',
      routerConfig: _router,
    );
  }

// Child Navigation
  // final _router = GoRouter(
  //     // initialLocation: '/second',
  //     routes: [
  //       GoRoute(
  //         path: '/',
  //         routes: [
  //           GoRoute(
  //             path: 'second',
  //             builder: (context, state) {
  //               return const SecondPage();
  //             },
  //           ),
  //         ],
  //         builder: (context, state) {
  //           return const FirstPage();
  //         },
  //       ),
  //       GoRoute(
  //         path: '/third',
  //         builder: (context, state) {
  //           return const ThirdPage();
  //         },
  //       ),
  //     ]);
  final _router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const FirstPage();
      },
    ),
    GoRoute(
      path: '/second/:name',
      builder: (context, state) {
        return SecondPage(name: state.pathParameters['name']!);
      },
    ),
    GoRoute(
      path: '/third',
      builder: (context, state) {
        return const ThirdPage();
      },
    ),
  ]);
}
