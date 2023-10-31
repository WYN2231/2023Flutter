import 'package:flutter/material.dart';

class CenterTest extends StatefulWidget {
  const CenterTest({super.key});

  @override
  State<CenterTest> createState() => _CenterTestState();
}

class _CenterTestState extends State<CenterTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("Center Test"),
        title: Text("Expended Test"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 10,
          child: Container(
            color: Colors.red,
            width: 100,
            height: 200,
          ),
        ),
      ),


      //////////////////////
      // body: Column(
      //   children: <Widget>[
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         color: Colors.red,
      //         width: 100,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         color: Colors.green,
      //         width: 100,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.blue,
      //         width: 100,
      //         height: 100,
      //       ),
      //     ),
      //   ],
      // ),

      /////////////////////////
      // body: Align(
      //   alignment: Alignment.topRight,
      //   child: Container(
      //     color: Colors.red,
      //     width: 50,
      //     height: 50,
      //     margin: EdgeInsets.all(10), //margin으로 (all) 모든 방향으로 여백을 줌
      //   ),
      // ),
    );
  }
}
