import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  //const Test({super.key});

  int count = 0;

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('카운터 테스트'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '결과',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              '${widget.count}',
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(Icons.add),
                    onPressed: CounterPlus
                ),
                SizedBox(width: 50),
                FloatingActionButton(
                  child: Icon(Icons.remove),
                    onPressed: CounterMinus
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void CounterPlus() {
    setState(() {
      widget.count++;
    });
  }

  void CounterMinus() {
    setState(() {
      if (widget.count > 0) {
        widget.count--;
      }
    });
  }

  // void CounterMinus() {
  //   setState(() {
  //     widget.count--;
  //   });
  // }
}
