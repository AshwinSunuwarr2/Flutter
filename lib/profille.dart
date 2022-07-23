import 'main.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  var profileName;

  ProfilePage(this.profileName);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello there.\n' + widget.profileName,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DancingScript'),
                ),

                Image.asset(
                  'assets/images/newfoto.jpg',
                  height: 80,
                  fit: BoxFit.fill,
                  width: 80,
                ),
                GestureDetector(
                  onTap: () {
                    print('went to gallery');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/newfoto.jpg'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
