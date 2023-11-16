import 'package:ch6/FirstPage.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstPage(),
      // routes: {
      //   '/first': (context)=>FirstPage(),
      //   '/second': (context)=>SecondPage(),
      // },
    );
  }
}

