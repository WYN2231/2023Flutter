import 'package:flutter/material.dart';
import 'TextFieldTest.dart';
import 'CheckboxTest.dart';
import 'RadioListTest.dart';
import 'DropDown.dart';
import 'AlertDig.dart';
import 'DatePicker.dart';
import 'EventTest.dart';
import 'HeroTest.dart';
import 'AnimatedContainer.dart';
import 'SliverTest.dart';
import 'SliverList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData t = new ThemeData(    //ThemeData에 있는 t라는 주소를 가리켜주는 역할을 해줌.
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: t,
      //home: TextFieldTest(),
      //home: CheckboxTest(),
      //home: RadioListTest(),
      // home: DropDown(),
      // home: AlertDig(),
      //home: DatePickerTest(),
      // home: EventTest(),
      // home: HeroTest(),
      // home: const AnimatedTest(),
      // home: const SliverTest(),
      home: SliverListTest(),
    );
  }
}
