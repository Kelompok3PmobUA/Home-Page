import 'package:flutter/material.dart';
import 'package:flutter_application_1/to-do%20use/todo.dart';
import 'package:flutter_application_1/to-do use/addTaskBox.dart';

class ShowTask extends StatelessWidget {
  const ShowTask({super.key, required this.todo});

  final ToDo todo;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.toDoAct,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Nunito',
                color: Color(0xFF2585DE),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Ket: " + todo.toDoNote,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                fontFamily: 'Nunito',
              ),
            ),
            Text(
              "Jam: " + todo.toDoTime,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                fontFamily: 'Nunito',
              ),
            ),
          ]),
    );
  }
}
