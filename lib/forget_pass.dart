import 'package:flutter/material.dart';

class Forget_Pass extends StatefulWidget {
  const Forget_Pass({Key? key}) : super(key: key);

  @override
  State<Forget_Pass> createState() => _Forget_PassState();
}

class _Forget_PassState extends State<Forget_Pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32, left: 16),
                child: Text(
                  'Change your password',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 14, left: 24),
                child: Text("Enter your Email",
                    style: TextStyle(fontSize: 14)),
              ),
              Container(
                padding: EdgeInsets.only(top: 4, left: 24, right: 24),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter email address"),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 14, left: 24),
                child: Text("Enter new Password",
                    style: TextStyle(fontSize: 14)),
              ),
              Container(
                padding: EdgeInsets.only(top: 4, left: 24, right: 24),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter new password"),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 14, left: 24),
                child: Text("Confirm Password",
                    style: TextStyle(fontSize: 14)),
              ),
              Container(
                padding: EdgeInsets.only(top: 4, left: 24, right: 24),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      hintText: "Confirm password"),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 16, left: 24, right: 24),
                alignment: Alignment.center,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: ElevatedButton(
                        child: Text("Submit",
                          style: TextStyle(color: Colors.white),

                        ),
                        onPressed: null,
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.red)
                        ),
                      ),)
                  ],
                ),
              )

            ],
          )),
    );
  }
}
