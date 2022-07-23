import 'package:flutter/material.dart';
import 'package:flutterui/Home.dart';
import 'package:flutterui/profille.dart';
import 'package:flutterui/semester_page.dart';
import 'package:flutterui/setting.dart';
import 'main.dart';

class DashPage extends StatefulWidget {
  var userName;
  var userPass;

  DashPage(this.userName, this.userPass);

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  var _screens = [];

  var _SelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _screens = [
      SettingsPage(),
      ProfilePage(widget.userName),
      homePage(),
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_SelectedIndex]),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("Semester"),
              trailing: Icon(Icons.ac_unit_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => sem(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("item 2"),
              trailing: Icon(Icons.ac_unit_rounded),
              onTap: () {},
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_off), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
        currentIndex: _SelectedIndex,
        onTap: (index) {
          setState(() {
            _SelectedIndex = index;
          });
        },
      ),
    );
  }
}
