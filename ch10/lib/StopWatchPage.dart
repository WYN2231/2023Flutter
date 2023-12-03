import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({super.key});

  @override
  State<StopWatchPage> createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  Timer? _timer;

  var _time = 0;
  var _isRunning = false;

  List<String> _lapTimes = [];

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("스탑 워치"),
        backgroundColor: Colors.orange,
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _clickButton();
          });
        },
        child: _isRunning ? const Icon(Icons.pause) : const Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBody(){
    var sec = _time ~/ 100;
    var hundredth = '${_time % 100}'.padLeft(2, "0");
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top:30),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "$sec",
                      style: const TextStyle(fontSize: 50),
                    ),
                    Text("$hundredth"),
                  ],
                ),
                SizedBox(
                  width: 100,
                  height: 200,
                  child: ListView(
                    children: _lapTimes.map((time) => Text(time)).toList(),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: FloatingActionButton(
                  onPressed: _reset,
                child: const Icon(Icons.rotate_left),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _recordLapTime("$sec.$hundredth");
                    });
                  },
                  child: const Text("랩타임"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _clickButton(){
    _isRunning = !_isRunning;

    if(_isRunning){
      _start();
    } else {
      _pause();
    }
  }

  void _start() {
    _timer = Timer.periodic(
        const Duration(microseconds: 10),
            (timer) {
              setState(() {
                _time++;
              });
            });
  }

  void _pause(){
    _timer?.cancel();
  }

  void _reset(){
    _isRunning = false;
    _timer?.cancel();
    _lapTimes.clear();
    _time = 0;
  }

  void _recordLapTime(String time){
    _lapTimes.insert(0, "${_lapTimes.length + 1}등 $time");
  }
}
