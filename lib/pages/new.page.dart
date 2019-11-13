import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {
  @override
  _NewTodoState createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Novo ToDo'),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  labelText: 'ToDo:', fillColor: Colors.white, filled: true),
              onSaved: (String value) {
                print(value);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: RaisedButton(
              color: Colors.white,
              child: Text(
                'Salvar',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                print('clicked save button');
              },
            ),
          )
        ],
      ),
    );
  }
}
