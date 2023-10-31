import 'package:flutter/material.dart';
import 'ContainerTest.dart';
import 'StackTest.dart';
import 'PuzzleUI.dart';
import 'PageViewUI.dart';
import 'TabBarTest.dart';
import 'BottomNavigationTest.dart';
import 'CenterTest.dart';
import 'ButtonTest.dart';
import 'Test.dart';
import 'Test2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const ContainerTest(),
      //home: const StackTest(),
      //home: const PuzzleUI(),
      //home: const PageViewUI(),
      //home: const TabBarTest(),
      //home: const BottomNavigationTest(),
      //home: const CenterTest(),
      home: const ButtonTest(),
      //home: Test(),
      //home: const Test2(),
    );
  }
}

//Widget build(BuildContext context) {
//     MaterialApp m = new MaterialApp(  //(원래는 이런 형태, 다트 문법은 위와 같이 표현할 수 있다.) MaterialApp m이라는 생성자를 만듬
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       //home: const ContainerTest(),
//     );

//     return m; //m을 리턴
//  }
//}