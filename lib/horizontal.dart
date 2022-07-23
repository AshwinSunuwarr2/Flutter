import 'package:flutter/material.dart';

class horizontalPage extends StatefulWidget {
  const horizontalPage({Key? key}) : super(key: key);

  @override
  State<horizontalPage> createState() => _horizontalPageState();
}

class _horizontalPageState extends State<horizontalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 140,
              color: Colors.green,
              child: Text('item 1'),
            ),
            Container(
              width: 140,
              color: Colors.red,
              child: Text('item 2'),
            ),
            Container(
              width: 140,
              color: Colors.blue,
              child: Text('item 2'),
            ),
            Container(
              width: 140,
              color: Colors.green,
              child: Text('item 2'),
            ),
            Container(
              width: 140,
              color: Colors.yellow,
              child: Text('item 2'),
            ),
            Container(
              width: 140,
              color: Colors.orange,
              child: Text('item 2'),
            ),
            Text('Third item'),
            Text('4th item')
          ],
        ),
      ),
    );
  }
}
