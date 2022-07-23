import 'package:flutter/material.dart';
import 'package:flutterui/horizontal.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var _name = ['ncit', 'kist', 'kaathford', 'host'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => horizontalPage()));
              },
              child: Text('list')),
          Expanded(child: ListView.builder(
            itemCount: _name.length,
            itemBuilder: (context, index) {
              return Container(
                  child: Text(
                _name[index],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ));
            },
          ),
          ),
        ],
      ),
    );
  }
}
