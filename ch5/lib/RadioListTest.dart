import 'package:flutter/material.dart';

class RadioListTest extends StatefulWidget {
  const RadioListTest({super.key});

  @override
  State<RadioListTest> createState() => _RadioListTestState();
}

enum Gender {MAN, WOMAN}
Gender? gender = Gender.MAN;

class _RadioListTestState extends State<RadioListTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Test'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('남자'),
            leading: Radio(
              value: Gender.MAN,
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('여자'),
            leading: Radio(
              value: Gender.WOMAN,
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 100,
          ),
          RadioListTile(
            title: Text('남자'),
              value: Gender.MAN,
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value;
                });
              },
          ),
          RadioListTile(
            title: Text('여자'),
            value: Gender.WOMAN,
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
