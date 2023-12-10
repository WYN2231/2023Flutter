// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'ToDo.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final _items = <ToDo>[];
  var _toDoController = TextEditingController();

  @override
  void dispose(){
    _toDoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("남은 할 일"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _toDoController,
                    ),
                ),
                ElevatedButton(
                    onPressed: () => _addToDo(ToDo(_toDoController.text)),
                    child: const Text("추가"),
                ),
              ],
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('todo').snapshots(),
              builder: (context, snapshot) {
                if(!snapshot.hasData){
                  return const CircularProgressIndicator();
                }
                final documents = snapshot.data!.docs;
                return Expanded(
                    child: ListView(
                      children: documents.map((doc) => _buildItemWidget(doc)).toList(),
                    ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildItemWidget(DocumentSnapshot doc){
    final todo = ToDo(doc['title'], isDone: doc['isDone']);
    return ListTile(
      onTap: ()=> _toggleToDo(doc),
      title: Text(
        todo.title,
        style: todo.isDone
            ? const TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        )
            : null,
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete_forever),
        onPressed: () => _deleteToDo(doc),
      ),
    );
  }
  
  void _addToDo(ToDo todo){
    FirebaseFirestore.instance.collection('todo')
        .add({'title' : todo.title, 'isDone' : todo.isDone});
    _toDoController.text = '';
  }
  
  void _deleteToDo(DocumentSnapshot doc){
    FirebaseFirestore.instance.collection('todo').doc(doc.id).delete();
  }
  
  void _toggleToDo(DocumentSnapshot doc) {
    FirebaseFirestore.instance.collection('todo').doc(doc.id).update(
        {'isDone': !doc['isDone']}
    );
  }
}

