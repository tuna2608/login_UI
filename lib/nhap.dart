
import 'package:flutter/material.dart';



// class MyApp extends StatefulWidget {
//   String? name;
//   int? age;
//   MyApp({this.name, this.age});
//     @override
//   State<StatefulWidget> createState() {
//       // TODO: inplement createState
//       return _MyAppState();
//     }
// }
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: 'This is a statefulWidget',
//       home: SafeArea (
//           child: Scaffold(
//
//             // mainAxisAlignment: MainAxisAlignment.center,
//             appBar: AppBar(
//                 backgroundColor: Colors.pink,
//                 title:Text(
//                       'Members',
//                 ),
//               ),
//             body: Center(
//
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                 Text(
//                 'Name: Tốp, age: 19',
//                 style: TextStyle( fontSize: 30, color: Colors.red),
//                 ),
//                 Text(
//                 'Name: ${widget.name}, age: ${widget.age}',
//                 style: TextStyle( fontSize: 30, color: Colors.lightBlueAccent),
//                 ),
//               ],
//               ),
//               ),
//       ),
//     )
//     );
//   }





// class MyApp extends StatelessWidget {
//   String? name;
//   int? age;
//
//   MyApp({this.name, this.age});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'App cua Tu',
//         home: Scaffold (
//           body: Center(child: Text(
//             'Xin chào $name $age tuổi',
//             style: TextStyle(
//               fontSize: 38,
//               fontWeight: FontWeight.bold,
//               color: Colors.red,
//             ),
//             textDirection: TextDirection.ltr,
//           )
//           ),
//         )
//     );
//   }
// }
// / class trangchu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Container(
//         width: 100,
//         height: 100,
//         color: Colors.blue,
//         ),
//      );
//   }
// }
// class Todo {
// final String title;
// final String description;
//
// Todo(this.title, this.description);
// }
//
// class FirstRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Click Here'),
//           color: Colors.orangeAccent,
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           color: Colors.blueGrey,
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back'),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/src/material/raised_button.dart';
// // import 'nhap.dart';
// void main() {
//   runApp(MaterialApp(
//     title: 'Flutter navigation',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     home: FirstScreen(),
//   ),
//   );
// }
//
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Launch screen'),
//           onPressed: () {
//             // Navigate to second screen when tapped!
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondScreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//       ),
//       body: Center(
//         child:
//           onPressed: () {
//             // Navigate back to first screen when tapped!
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Launch screen'),
//           onPressed: () {
//             // Navigate to second screen whe tapped!
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondScreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//       ),
//       body: Center(
//         child:RaisedButton(
//           onPressed: () {
//             // Navigate back to first screen when tapped!
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
// decoration: InputDecoration(
// border: OutlineInputBorder()