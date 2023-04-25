import 'package:flutter/material.dart';

class NewPostPage extends StatefulWidget {
  NewPostPage({Key? key}) : super(key: key);

  @override
  _NewPostPageState createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  final TextEditingController _controller = TextEditingController();

  void _savePost() {
    if (_controller.text.isNotEmpty) {
      Navigator.of(context).pop(_controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Post'),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: _savePost),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          maxLines: null,
          decoration: InputDecoration(
            hintText: 'Write your post here...',
          ),
        ),
      ),
    );
  }
} 