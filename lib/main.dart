import 'package:flutter/material.dart';
import 'package:intranet/new_post_page.dart';

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

class BoardHomePage extends StatefulWidget {
  BoardHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _BoardHomePageState createState() => _BoardHomePageState();
}

class _BoardHomePageState extends State<BoardHomePage> {
  List<String> posts = [];

  void _addPost() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewPostPage()),
    );

    if (result != null && result is String) {
      setState(() {
        posts.add(result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(posts[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPost,
        tooltip: 'Add Post',
        child: Icon(Icons.add),
      ),
    );
  }
}