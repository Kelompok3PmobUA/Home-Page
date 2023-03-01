import 'package:flutter/material.dart';
import 'package:flutter_application_1/to-do-list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 20,
                  ),
                  child: Text(
                    "Hari ini",
                    style: TextStyle(
                      color: Color(0xFF6C9BC8),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
                ToDo(),
                ToDo(),
                ToDo(),
                ToDo(),
                ToDo(),
              ],
            ),
          )
        ]),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF2585DE),
                Color(0xFFA4D3FF),
              ]),
        ),
      ),
      title: Column(
        children: [Text("Welcome Wahyu"), Text("Hari ini kamu punya x tugas")],
      ),
    );
  }
}
