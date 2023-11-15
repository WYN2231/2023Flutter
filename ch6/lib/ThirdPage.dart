import 'package:ch6/FirstPage.dart';
import 'package:flutter/material.dart';
import 'Person.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key?key, required this.person}): super(key: key);
  final Person person;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Text(widget.person.name),
          Text(widget.person.age.toString()),
          ElevatedButton(
            child: const Text("이전 페이지로 이동"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: const Text("첫 번째 페이지로 이동"),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FirstPage(), //첫 번째 페이지로 이동이 되긴 하지만 뒤로가기 버튼이 생김
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
