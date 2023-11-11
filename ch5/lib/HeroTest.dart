import 'package:flutter/material.dart';

class HeroTest extends StatefulWidget {
  const HeroTest({super.key});

  @override
  State<HeroTest> createState() => _HeroTestState();
}

class _HeroTestState extends State<HeroTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 누르면 정보 표시'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        return const HeroDetailPage();
                      }
                  ),
                );
              },
              child: Hero(
                tag: 'Image',
                child: Image.asset(
                  'assets/flutter.png',
                  width: 200,
                  height: 150,
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        return const HeroDetailPage2();
                      }
                  ),
                );
              },
              child: Hero(
                tag: 'Image2',
                child: Image.asset(
                  'assets/git.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            '플러터',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Hero(
            tag: 'image',
            child: Image.asset(
                'assets/flutter.png',
              width: 200,
              height: 100,
            ),
          ),
          SizedBox(
            width: 300,
            height: 120,
            child: Card(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              color: Colors.white70,
              child: const Text(
                  '플러터는 구글에서 개발한 크로스 플랫폼 앱 개발 프레임워크이다.',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeroDetailPage2 extends StatelessWidget {
  const HeroDetailPage2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '깃허브',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'image2',
            child: Image.asset(
              'assets/git.png',
              width: 200,
              height: 100,
            ),
          ),
          SizedBox(
            width: 300,
            height: 200,
            child: Card(
              margin: const EdgeInsets.fromLTRB(15, 20, 5, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              color: Colors.black38,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '깃허브는 루비 온 레일스로 작성된 분산 버전 관리 툴인 깃 저장소 호스팅을 지원하는 웹 서비스이다.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
