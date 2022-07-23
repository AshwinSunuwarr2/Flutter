import 'package:flutter/material.dart';

class newSem extends StatefulWidget {
  const newSem({Key? key}) : super(key: key);

  @override
  State<newSem> createState() => _newSemState();
}

class _newSemState extends State<newSem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sem Page'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Enter id to update/delete',
                  labelText: 'Enter ID',
                ),
              ),
              Padding(padding: EdgeInsets.all(2)),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Enter Semester',
                    labelText: 'Semester'),
              ),
              Padding(padding: EdgeInsets.all(2)),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter Grade',
                  labelText: "Grade",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        print("Pressed");
                      },
                      child: Text('Add')),
                  OutlinedButton(
                    onPressed: () {
                      print("Pressed");
                    },
                    child: Text('Delete'),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        print('Clicked');
                      },
                      child: Text('Update')),
                ],
              ),
              Container(
                child: OutlinedButton(
                    onPressed: () {
                      print('clicked');
                    },
                    child: Text('API')),
              ),
              OutlinedButton(
                  onPressed: () {
                    print("Pressed");
                  },
                  child: Text('Read')),
            ],
          ),
        ));
  }
}
