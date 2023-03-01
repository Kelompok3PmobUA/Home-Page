import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          leading: Icon(
            Icons.check_circle,
            color: Color(0xFF14FF00),
          ),
          title: Text(
            "Kelas PDB",
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2585DE),
            ),
          ),
          trailing: Text(
            "10.00",
            style: TextStyle(
              color: Color(0xFF8C8C8C),
              fontFamily: 'Nunito',
            ),
          ),
        ),
      ),
    );
  }
}
