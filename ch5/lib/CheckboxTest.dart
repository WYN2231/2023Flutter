import 'package:flutter/material.dart';

class CheckboxTest extends StatefulWidget {
  const CheckboxTest({super.key});

  @override
  State<CheckboxTest> createState() => _CheckboxTestState();
}

class _CheckboxTestState extends State<CheckboxTest> {
  bool isChecked = false;
  //bool? isChecked = false;          //이 변수를 Nullable로 쓰겠다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Test'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value){
                setState(() {
                  isChecked = value!;   //value가 bool타입이 아니라 Nullable 타입이라 Null이 아니라는 뜻으로 !으로 알려줌.
                  //isChecked = value;
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            Switch(
                value: isChecked,
                onChanged: (value){
                  setState(() {
                    isChecked = value;
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
