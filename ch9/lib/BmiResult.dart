import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final double height;
  final double weight;                                          //키하고 몸무게 정보가 넘어옴
  const BmiResult({super.key, required this.height, required this.weight});   //값 초기화

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height/100 * height/100));
    return Scaffold(
      appBar: AppBar(
        title: const Text("비만도 계산기"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _calcBmi(bmi),
              style: const TextStyle(fontSize: 36),
            ),
            const SizedBox(height: 16,),
            _buildIcon(bmi),
          ],
        ),
      ),
    );
  }

  String _calcBmi(double bmi){
    var result = "저체중";

    if(bmi > 35){
      result = "고도비만";
    } else if(bmi > 30){
      result = "2단계 비만";
    } else if(bmi > 25){
      result = "1단계 비만";
    } else if(bmi > 23){
      result = "과체중";
    } else if(bmi > 18.5){
      result = "정상";
    }
    return result;
  }

  Widget _buildIcon(double bmi) {
    if(bmi > 23){
      return const Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.red,
        size: 100,
      );
    } else if(bmi > 18.5){
      return const Icon(
        Icons.sentiment_satisfied,
        color: Colors.green,
        size: 100,
      );
    } else {
      return const Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.orange,
        size: 100,
      );
    }
  }
}

