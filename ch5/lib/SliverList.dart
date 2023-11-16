import 'package:flutter/material.dart';

class SliverListTest extends StatelessWidget {
  // const SliverListTest({super.key});
  final _items = List.generate(50, (i) => ListTile(title: Text("no. $i")));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliver List"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Sliver"),
              background: Image.asset(
                "assets/git.png",
                fit: BoxFit.cover,
              ),
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: (){},
                  icon: Image.asset("assets/google.png")
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_items),
          ),
        ],
      ),
    );
  }
}
