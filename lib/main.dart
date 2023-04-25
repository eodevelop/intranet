import 'package:flutter/material.dart';
import 'package:intranet/screens/login_page.dart';

void main() {
  runApp(BoardApp());
}

class BoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Board App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}