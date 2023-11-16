import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedTest extends StatefulWidget {
  const AnimatedTest({super.key});

  @override
  State<AnimatedTest> createState() => _AnimatedTestState();
}

class _AnimatedTestState extends State<AnimatedTest> {
  var _size = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            final random = Random();
            setState(() {
              _size = random.nextInt(200).toDouble() + 100;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _size,
            height: _size,
            curve: Curves.fastOutSlowIn,
            child: Image.asset("assets/git.png"),
          ),
        ),
      ),
    );
  }
}
