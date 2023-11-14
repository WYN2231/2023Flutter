import 'package:flutter/material.dart';

import 'Person.dart';
import 'SecondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String resultStr = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(resultStr),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: const Text("다음 페이지로 이동"),
            onPressed: () async {
              final person = /*new*/ Person("홍길동", 30);
              final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(person: person), //람다식으로 표현 (함수)(context){return SecondPage();}
                                                        //person을 호출 할 때 person: person 형태로 작성
                  ),
              );
              setState(() {
                resultStr = result;
              });
            },
          ),
        ],
      ),
    );
  }
}
