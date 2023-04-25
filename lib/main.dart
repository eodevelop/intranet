import 'package:flutter/material.dart';
import 'package:intranet/screens/board_home_page.dart';

void main() {
  runApp(BoardApp());
}

class BoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Board App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BoardHomePage(title: 'Board App Home Page'),
    );
  }
}