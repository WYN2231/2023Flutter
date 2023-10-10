// import 'package:flutter/material.dart';
//
// class HelloPage extends StatefulWidget {
//   late String title;
//
//   HelloPage({super.key, required String title}) {
//     this.title = title;
//   }
//   State<HelloPage> createState() => _HelloPageState();
// }
//
// class _HelloPageState extends State<HelloPage> {
//   String message = 'Hello World';
//   int count = 0;
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Text(
//         message,
//         style: TextStyle(fontSize: 50),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             message = "헬로 월드";
//           });
//         },
//       ),
//     );
//   }
// }
//
// // void ChangeCounter() {
// //   setState(() {
// //     count++;
// //   });
// // }
//
// // void ChangeMessage() {
// //   setState(() {
// //     message = "헬로 월드";
// //   });
// // }