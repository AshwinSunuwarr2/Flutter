import 'package:flutter/material.dart';

class SemTwoPage extends StatefulWidget {
  const SemTwoPage({Key? key}) : super(key: key);

  @override
  State<SemTwoPage> createState() => _SemTwoPageState();
}

var name = 'unknowing';
var word = 'MAD';
var _isVisible = false;
var _sliderValue = 0.0;

class _SemTwoPageState extends State<SemTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hello ' + name),
        Container(
          child: TextButton(
            onPressed: () {
              setState(() {
                name = 'world';
                print(name);
              });
            },
            child: Text('change state'),
          ),
        ),
        Text('oo ' + word),
        Container(
          child: TextButton(
            onPressed: () {
              setState(() {
                word = 'Mobile Application Development';
              });
            },
            child: Text('Press me'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isVisible = true;
                  });
                },
                child: Text('Magic')),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isVisible = false;
                  });
                },
                child: Text('Hide')),
          ],
        ),
        Visibility(
          visible: _isVisible,
          child: Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(15),
            child: Text(
              "I'm visible now",
              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),
          ),
        ),
        Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            label: _sliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            }),
        Text('big bang', style: TextStyle(fontSize: _sliderValue, fontFamily: 'DancingScript'),),

      ],
    );
  }
}
