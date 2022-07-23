import 'package:flutterui/DetailPage.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'DashboardPage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formkey = GlobalKey<FormState>();
  bool _isPasswordHidden = true;
  var userNameController = TextEditingController();
  var userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Lottie.asset('assets/Gif/msg.json'),

                TextFormField(
                  controller: userNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter name';
                    }
                    if (value.split(" ").length == 1) {
                      return 'Enter your full name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: 'Enter your full name',
                  labelText: 'Name', border: OutlineInputBorder()),
                ),
                TextFormField(
                  controller: userPasswordController,
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
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                        labelText: 'Password', border: OutlineInputBorder(),
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
                    )),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        String user = userNameController.text;
                        String password = userPasswordController.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DashPage(user, password),
                          ),
                        );
                        /*
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('all good to go')),
                        );*/
                        /*SnackBar(content: Text('pressed button'),),);*/
                      }
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
