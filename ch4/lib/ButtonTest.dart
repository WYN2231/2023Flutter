import 'package:flutter/material.dart';

class ButtonTest extends StatefulWidget {
  const ButtonTest({super.key});

  @override
  State<ButtonTest> createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Test'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: CircleAvatar(
        child: Icon(Icons.person),
      ),
    );
  }

//   onPressed: MyPressed,    //(함수 = 주소) 함수 포인터, 이 주소로 가서 실행시킴

  // void MyPressed() {       //다트에서 이런 형태는 함수가 한 번만 사용되기 때문에 익명함수로 작성함)
  //   setState(() {          //(다만 모든 것을 익명함수로 작성하는 건 아니고 PuzzleUI.dart와 같이 한 번만 사용될 경우 이름을 안 붙여줌)
  //
  //   });
  // }
}

