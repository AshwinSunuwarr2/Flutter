import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DetailPage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('settings'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {
            print("alarm clicked");
          }, icon: Icon(Icons.access_alarm))
        ],),
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
                controller: textController,
                decoration: InputDecoration(hintText: 'Enter Text')
            ),
            ElevatedButton(
                onPressed: () {
                  pressedButton();
                },
                child: Text("Click Here")),
            ElevatedButton(
                onPressed: () {
                  showMeDialog();
                },
                child: Text("Show Dialog")),
            ElevatedButton(
                onPressed: () {
                  showIOSdialog();
                },
                child: Text('Show IOS Dialog')),
            ElevatedButton(
                onPressed: () {
                  showButtomSheet();
                },
                child: Text('Show buttom sheet'))
          ],
        ),
      ),
    );
  }

  void showMeDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) =>
            AlertDialog(
              title: Text('Dialog Box'),
              content: Text('Wanna Exit?'),
              actions: [
                TextButton(onPressed: null, child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("No"))
              ],
            ));
  }

  void showIOSdialog() {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) =>
            CupertinoAlertDialog(
              title: Text('title'),
              content: Text('Message'),
              actions: [
                CupertinoDialogAction(onPressed: null, child: Text('Yass')),
                CupertinoDialogAction(onPressed: null, child: Text('NO'))
              ],
            ));
  }

  void showButtomSheet() {
    showModalBottomSheet(context: context, builder: (BuildContext context) {
      return Container(
        height: 300,
        child: Text("ButtomSheet"),
      );
    });
  }

  void pressedButton() {
    String tosend = textController.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailPage("", "'")));
  }
}