import 'package:flutter/material.dart';

class SemThrPage extends StatefulWidget {
  const SemThrPage({Key? key}) : super(key: key);

  @override
  State<SemThrPage> createState() => _SemThrPageState();
}

class _SemThrPageState extends State<SemThrPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.green),
    );
  }
}
