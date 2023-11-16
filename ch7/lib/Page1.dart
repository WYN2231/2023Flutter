import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  //메뉴
  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                print('클릭');
              },
              child: const Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
            ),
            const Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('블랙'),
              ],
            ),
            const Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('바이크'),
              ],
            ),
            const Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('대리'),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('블랙'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('바이크'),
              ],
            ),
            Opacity(
              opacity: 0.0,
              child: Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('대리'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return const Text('Middle');
  }

  Widget _buildBottom() {
    return const Text('Bottom');
  }
}
