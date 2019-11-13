import 'package:flutter/material.dart';

class TodoCard extends StatefulWidget {
  String text;
  bool checked = false;

  TodoCard(this.text, [this.checked = false]);

  @override
  _TodoCardState createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {

              },
            ),
            Expanded(
              child: Text(
                widget.text,
              ),
            ),
            IconButton(
              icon: widget.checked
                  ? Icon(Icons.check_box)
                  : Icon(Icons.check_box_outline_blank),
              onPressed: () {
                setState(() {
                  if (widget.checked == true) {
                    widget.checked = false;
                  } else {
                    widget.checked = true;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
