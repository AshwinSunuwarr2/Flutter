import 'package:flutter/material.dart';

class SemFirPage extends StatefulWidget {
  const SemFirPage({Key? key}) : super(key: key);

  @override
  State<SemFirPage> createState() => _SemFirPageState();
}

class _SemFirPageState extends State<SemFirPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Semester Overview',
                style: TextStyle(fontFamily: 'DancingScript', fontSize: 30),
              ),
              Card(
                color: Colors.white70,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.looks_one),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total credit hour: 40\n' +
                                'Total Subjects: 6\n' +
                                'Total students: 50'),
                            Text('Total Fees: Rs.1,20,000'),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: null, child: Text('SGPA: 4')),
                        TextButton(onPressed: null, child: Text('Result'))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Courses',
                style: TextStyle(fontFamily: 'DancingScript', fontSize: 30),
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                        color: Colors.white70,
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '1: Maths I',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('Total chapters: 16'),
                                  Text('Difficulty Level: Very Hard'),
                                  Text('Credit Hour: 3 hrs'),
                                ]))),
                    Card(
                        color: Colors.white70,
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 13, top: 10, right: 13),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '2: BEE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('Total chapters: 16'),
                                  Text('Difficulty Level: Very Hard'),
                                  Text('Credit Hour: 3 hrs'),
                                ]))),
                    Card(
                        color: Colors.white70,
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 13, top: 10, right: 13),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '3: Chemistry',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('Total chapters: 16'),
                                  Text('Difficulty Level: Very Hard'),
                                  Text('Credit Hour: 2 hrs'),
                                ]))),
                    Card(
                        color: Colors.white70,
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 13, top: 10, right: 13),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '4: C Programming',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('Total chapters: 16'),
                                  Text('Difficulty Level: Very Hard'),
                                  Text('Credit Hour: 3 hrs'),
                                ]))),
                    Card(
                        color: Colors.white70,
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 13, top: 10, right: 13),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '5: Mechanics',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('Total chapters: 16'),
                                  Text('Difficulty Level: Very Hard'),
                                  Text('Credit Hour: 3 hrs'),
                                ]))),
                    Card(
                        color: Colors.white70,
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 13, top: 10, right: 13),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '6: Communication Technique',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('Total chapters: 16'),
                                  Text('Difficulty Level: Very Hard'),
                                  Text('Credit Hour: 3 hrs'),
                                ]))),
                  ],
                ),
              ),
              const Text(
                'Extra Activities',
                style: TextStyle(fontFamily: 'DancingScript', fontSize: 30),
              ),
              Text('1: Participated in Hackathon\n' +
                  '2: Sports week Winner\n' +
                  '2: Sports week Winner\n' +
                  '2: Sports week Winner\n' +
                  '2: Sports week Winner\n' +
                  '2: Sports week Winner\n' +
                  '2: Sports week Winner\n')
            ],
          ),
        ),
      ),
    );
  }
}
