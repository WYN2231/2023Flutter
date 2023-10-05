import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget {
  late String title;

  HelloPage({super.key, required String title}) {
    this.title = title;
  }
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String message = 'Hello World';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Text(
        message,
        style: TextStyle(fontSize: 30),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            message = "헬로 월드";
            });
      ),
    );
  }
}