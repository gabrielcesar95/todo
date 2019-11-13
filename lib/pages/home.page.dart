import 'package:flutter/material.dart';
import 'package:todo/widgets/todo-card.dart';
import 'package:todo/widgets/todo-empty.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todos = [
    {'text': 'texto teste 1', 'checked': false},
    {'text': 'texto teste 2', 'checked': true},
    {'text': 'texto teste 3', 'checked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ToDo'),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: this.todos.length > 0
          ? ListView.builder(
              itemCount: this.todos.length,
              itemBuilder: (context, index) {
                Map item = this.todos[index];

                return TodoCard(item['text'], item['checked']);
              },
            )
          : TodoEmpty(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('/new');
        },
      ),
    );
  }
}
