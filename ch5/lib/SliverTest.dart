import 'package:flutter/material.dart';

class SliverTest extends StatefulWidget {
  const SliverTest({super.key});

  @override
  State<SliverTest> createState() => _SliverTestState();
}

class _SliverTestState extends State<SliverTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver Test'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver'),
              background: Image.asset(
                'assets/git.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverFillRemaining(
            child: Center(
              child: Text('center'),
            ),
          ),
        ],
      ),
    );
  }
}
