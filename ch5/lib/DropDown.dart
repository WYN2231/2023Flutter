import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final valueList = ['First Item', 'Second Item', 'Third Item'];
  String selectedItem = 'First Item';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Test'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: DropdownButton(     //??
        value: selectedItem,
        items: valueList.map(
            (value) {
              return DropdownMenuItem(
                value: value,
                  child: Text(value),
              );
            }
        ).toList(),
        onChanged: (String? value){
          setState(() {
            selectedItem = value!;  //selectedItem 선택한 것의 String 형태의 값을 받아옴,
          });                       //setState로 build가 다시 호출이 되어서 value값이 업데이트 됨
        },
      ),
    );
  }
}
