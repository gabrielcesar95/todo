import 'package:flutter/material.dart';

class TodoEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Nenhum item adicionado',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      alignment: Alignment(0, 0),
    );
  }
}
