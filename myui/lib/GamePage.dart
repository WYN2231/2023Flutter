import 'package:flutter/material.dart';
import 'MainPage.dart';

class GamePage extends StatefulWidget {
  GamePage({super.key});
  final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: false,
                  stretch: false,
                  backgroundColor: Colors.white,
                  title: TextField(
                    enableInteractiveSelection: false,
                    focusNode: AlwaysDisabledFocusNode(),
                    onTap: (){
                      showSearch(context: context, delegate:Search(widget.list));
                    },
                    decoration: InputDecoration(
                      hintText: "앱 및 게임 검색",
                      filled: true,
                      fillColor: Colors.black12,
                      contentPadding: const EdgeInsets.all(14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: (){
                          showSearch(context: context, delegate:Search(widget.list));
                        },
                      ),
                    ),
                  ),
                ),
                const SliverPersistentHeader(
                    pinned: true, delegate: TabBarDelegate()
                ),
                SliverFixedExtentList(
                    delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return TabBarView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 48.0),
                                child: Card(
                                  color: Colors.grey,
                                  child: Text("List item $index", style: TextStyle(fontSize: 20),),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                color: Colors.green[100 * (index % 5)],
                                child: Text("List item $index", style: TextStyle(fontSize: 20),),
                              ),
                              Container(
                                alignment: Alignment.center,
                                color: Colors.blue[100 * (index % 5)],
                                child: Text("List item $index", style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          );
                        }, childCount: 10,
                    ),
                    itemExtent: 320.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

