import 'package:flutter/material.dart';
import 'package:flutterui/logining.dart';
import 'package:flutterui/main.dart';

import 'DashboardPage.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  var _formKey = GlobalKey<FormState>();

  bool _isPasswordHidden=true;
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _conPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 14),
                child: RichText(
                    text: const TextSpan(
                        text: " Welcome to ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'SignUp',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold))
                    ])),
              ),
              Container(
                padding: EdgeInsets.only(top: 14, left: 24),
                child: Text("Email", style: TextStyle(fontSize: 14)),
              ),
              Container(
                padding: EdgeInsets.only(top: 4, left: 24, right: 24),
                child: TextFormField(
                  validator: (value) {
                    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                    if (emailValid!=true){
                      return 'enter valid email';
                    }
                    if (value.isEmpty) {
                      return 'Enter email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter your email"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 14, left: 24),
                child: Text("Password", style: TextStyle(fontSize: 14)),
              ),
              Container(
                padding: EdgeInsets.only(top: 4, left: 24, right: 24),
                child: TextFormField(
                  controller: _pass,
                  obscureText: _isPasswordHidden,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter password';
                    }
                    if (value.length < 6) {
                      return 'weak password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter password",
                    suffixIcon: IconButton(
                      icon: Icon(_isPasswordHidden
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                                (){
                              _isPasswordHidden = ! _isPasswordHidden;
                            }
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 14, left: 24),
                child: Text("Confirm password", style: TextStyle(fontSize: 14)),
              ),
              Container(
                padding: EdgeInsets.only(top: 4, left: 24, right: 24),
                child: TextFormField(
                   controller: _conPass,
                    obscureText: _isPasswordHidden,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter password';
                      }
                      if (value!=_pass.text)
                        return 'password doesnot match';
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Enter password",
                      suffixIcon: IconButton(
                        icon: Icon(_isPasswordHidden
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                  (){
                                _isPasswordHidden = ! _isPasswordHidden;
                              }
                          );
                        },
                      ),
                    )

                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16, left: 24, right: 24),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: ElevatedButton(
                        child: Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage(),
                              ),
                            );
                            /*
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('all good to go')),
                      );*/
                            /*SnackBar(content: Text('pressed button'),),);*/
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyHomePage(title: 'Flutter Demo')));
                      },
                      child: Text(
                        "Login.",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
