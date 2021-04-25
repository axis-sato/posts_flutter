import 'package:flutter/material.dart';

class CreatePostDialog extends StatefulWidget {
  @override
  _CreatePostDialogState createState() => _CreatePostDialogState();
}

class _CreatePostDialogState extends State<CreatePostDialog> {
  String _title = "";
  String _body = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Post作成"),
      content: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
            onChanged: (value) {
              setState(() {
                _title = value.trim();
              });
            },
          ),
          TextField(
            autofocus: true,
            decoration: const InputDecoration(
              labelText: 'Body',
            ),
            onChanged: (value) {
              setState(() {
                _body = value.trim();
              });
            },
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          child: const Text('キャンセル'),
        ),
        TextButton(
          onPressed: _title == "" || _body == ""
              ? null
              : () {
                  Navigator.of(context).pop(
                    NewPost(title: _title, body: _body),
                  );
                },
          child: const Text('作成'),
        ),
      ],
    );
  }
}

class NewPost {
  String title;
  String body;

  NewPost({required this.title, required this.body});

  @override
  String toString() {
    return "NewPost: {title $title, body $body}";
  }
}
