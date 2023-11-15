import 'package:flutter/material.dart';
import 'Person.dart';
import 'ThirdPage.dart';
import 'FirstPage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key?key, required this.person}): super(key: key);
  final Person person;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Text(widget.person.name),
          Text(widget.person.age.toString()),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              ElevatedButton(
                child: const Text("이전 페이지로 이동"),
                onPressed: (){
                  Navigator.pop(context, 'ok');
                },
              ),
              ElevatedButton(
                child: const Text("다음 페이지로 이동"),
                onPressed: () async {
                  final person = /*new*/ Person("Android", 14);
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(person: person),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
