import 'package:flutter/material.dart';
import 'package:flutterui/semeste/semeight.dart';
import 'package:flutterui/semeste/semfive.dart';
import 'package:flutterui/semeste/semfour.dart';
import 'package:flutterui/semeste/semone.dart';
import 'package:flutterui/semeste/semseven.dart';
import 'package:flutterui/semeste/semsix.dart';
import 'package:flutterui/semeste/semthree.dart';
import 'package:flutterui/semeste/semtwo.dart';

class sem extends StatefulWidget {
  const sem({Key? key}) : super(key: key);

  @override
  State<sem> createState() => _semState();
}

class _semState extends State<sem> {
  bool _isDarkTheme = false;

  var themelight =
      ThemeData(brightness: Brightness.light, primarySwatch: Colors.green, indicatorColor: Colors.orange, fontFamily: 'BebasRegular',
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 40, color: Colors.deepOrangeAccent),
        headline2: TextStyle(fontSize: 30, color: Colors.orangeAccent)
      ));
  var themedark =
      ThemeData(brightness: Brightness.dark, primarySwatch: Colors.amber, fontFamily: 'DancingScript');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkTheme ? themedark : themelight,
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Switch(
                  value: _isDarkTheme,
                  onChanged: (value) {
                    setState(() {
                      _isDarkTheme = value;
                    });
                  })
            ],
            title: Text('My semester tracker'),
            backgroundColor: Colors.deepOrangeAccent,
            bottom: TabBar(
              indicatorColor: Colors.black,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'First',
                  icon: Icon(Icons.switch_access_shortcut),
                ),
                Tab(
                  text: 'Second',
                  icon: Icon(Icons.filter_1_rounded),
                ),
                Tab(
                  text: 'Third',
                  icon: Icon(Icons.switch_access_shortcut),
                ),
                Tab(
                  text: 'Fourth',
                  icon: Icon(Icons.filter_1_rounded),
                ),
                Tab(
                  text: 'Fifth',
                  icon: Icon(Icons.switch_access_shortcut),
                ),
                Tab(
                  text: 'Sixth',
                  icon: Icon(Icons.filter_1_rounded),
                ),
                Tab(
                  text: 'Seventh',
                  icon: Icon(Icons.switch_access_shortcut),
                ),
                Tab(
                  text: 'Eighth',
                  icon: Icon(Icons.filter_1_rounded),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SemFirPage(),
              SemTwoPage(),
              SemThrPage(),
              SemFoPage(),
              SemFiPage(),
              SemSixPage(),
              SemSevPage(),
              SemEiPage(),
            ],
          ),
        ),
      ),
    );
  }
}
