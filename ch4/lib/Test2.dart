import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('중간고사'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                color: Colors.red,
                width: 300,
              ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
