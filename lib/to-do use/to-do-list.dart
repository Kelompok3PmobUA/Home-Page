// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/to-do use/todo.dart';
// import 'package:flutter_application_1/to-do use/addTaskBox.dart';
// // import 'package:flutter_application_1/to-do use/showTask.dart';

// class ToDoList extends StatelessWidget {
//   final 

//   const ToDoList({super.key, required this.todo});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 15),
//       child: Material(
//         elevation: 3,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         child: ListTile(
//           // onTap: () => showDialog(
//           //     context: context,
//           //     builder: (context) {
//           //       return ShowTask(todo: todo);
//           //     }),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           contentPadding: EdgeInsets.symmetric(horizontal: 20),
//           leading: Icon(
//             todo.isDone ? Icons.check_circle : Icons.pending_actions,
//             color: todo.isDone ? Colors.green : Color(0xFF2585DE),
//           ),
//           title: Text(
//             todo.toDoAct,
//             style: TextStyle(
//               fontFamily: 'Nunito',
//               fontSize: 20,
//               fontWeight: FontWeight.w700,
//               color: todo.isDone ? Color(0xFF9AC8F4) : Color(0xFF2585DE),
//             ),
//           ),
//           subtitle: Text(
//             todo.toDoNote,
//             style: TextStyle(
//               fontFamily: 'Nunito',
//               fontWeight: FontWeight.w500,
//               color: todo.isDone ? Color(0xFF9AC8F4) : Color(0xFF2585DE),
//             ),
//           ),
//           trailing: Text(
//             todo.toDoTime,
//             style: TextStyle(
//               color: Color(0xFF8C8C8C),
//               fontFamily: 'Nunito',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
