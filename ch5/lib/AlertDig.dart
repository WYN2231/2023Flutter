import 'package:flutter/material.dart';

class AlertDig extends StatefulWidget {
  const AlertDig({super.key});

  @override
  State<AlertDig> createState() => _AlertDigState();
}

class _AlertDigState extends State<AlertDig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ElevatedButton(
        child: Text('Show Dialog'),
        onPressed: (){
          showDialog(
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text('제목'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text('Alert Dialog 입니다.'),
                        Text('OK를 눌러 주세요.'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: Text('OK')
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel')
                    ),
                  ],
                );   //return 후 세미콜론(;)
              },
          );
        },
      ),
    );
  }
}
