import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    final imageItems = [
      'assets/sea.jpg',
      'assets/dog.jpg',
      'assets/dinosaur.jpg',
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: 500.0,
      ),
      items: imageItems.map((path)
          {
           return Builder(
               builder: (BuildContext context) {
                 return Container(
                   width: MediaQuery.of(context).size.width,
                   margin: const EdgeInsets.symmetric(horizontal: 5.0),
                   child: ClipRect(
                     child: Image.asset(
                         path,
                        fit: BoxFit.cover,
                     ),
                   ),
                 );
               },
           );
          }
      ).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(
        10, (i){
          return const ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text("공지사항입니다."),
          );
    });
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
