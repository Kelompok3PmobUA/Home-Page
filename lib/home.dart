import 'package:flutter/material.dart';
// import 'package:flutter_application_1/social_page.dart';
// import 'package:flutter_application_1/to-do use/to-do-list.dart';
// import 'package:flutter_application_1/to-do use/home_body.dart';
import 'package:flutter_application_1/publicAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/publicNavBar.dart';
import 'package:flutter_application_1/to-do%20use/homenavBar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_application_1/to-do use/appBar.dart';
import 'package:flutter_application_1/to-do use/addTaskBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.items});

  final List<ListTile> items;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  // AppBar
                  HomeAppBar(elevation: 0, flexibleSpace: Container()),

                  // Body Page
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.builder(
                      itemCount: widget.items.length,
                      itemBuilder: (context, int index) {
                        return widget.items[index];
                      },
                    ),
                  )),

                  // Expanded(
                  //     child: ListView.builder(
                  //   itemCount: widget.items.length,
                  //   itemBuilder: (context, int index) {
                  //     return widget.items[index];
                  //   },
                  // ))
                ],
              ),
            ),

            // Add-task Button
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(
                  right: 20,
                  bottom: 75,
                ),
                child: FloatingActionButton(
                  // Adding task
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) {
                        return AddTaskBox();
                      }),
                  child: Icon(Icons.post_add_rounded),
                ),
              ),
            ),
          ],
        ),
      ),
      // appBar: buildAppBar(), (Gajadi pake appbar)
    );
  }
}

// // Create AppBar Here
// buildAppBar() {
//   return AppBar(
//     elevation: 0,
//     flexibleSpace: Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFF2585DE),
//               Color(0xFFA4D3FF),
//             ]),
//       ),
//     ),
//     title: Column(
//       children: [Text("Welcome Wahyu"), Text("Hari ini kamu punya x tugas")],
//     ),
//   );
// }

// // Create (Google) NavBar Here
// NavBars() {
//   return GNav(
//       backgroundColor: Color(0xFFE3F2F9),
//       activeColor: Color(0xFF2585DE),
//       iconSize: 30,
//       padding: EdgeInsets.all(20),
//       tabs: const [
//         GButton(
//           icon: Icons.home_rounded,
//         ),
//         GButton(
//           icon: Icons.task_rounded,
//         ),
//         GButton(
//           icon: Icons.group_rounded,
//         ),
//         GButton(icon: Icons.person_rounded),
//       ]);
// }
