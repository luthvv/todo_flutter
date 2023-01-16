import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TodoPage extends StatefulWidget {
  TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<String> todos = [
    "Mandi",
    "Mengerjakan Project",
    "Game",
    "Belanja"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              var text = todos[index];
              return TodoItemWidget(
                title: text,
                onDelete: () {
                  setState(() {
                  todos.removeAt(index);
                  });
                },
              );
            }));
  }
}

class TodoItemWidget extends StatelessWidget {
  final String title;
  final Function() onDelete;
  TodoItemWidget({Key? key, required this.title, required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1.0,
          color: Colors.grey[900]!,
        ),
      ),
      child: Row(
        children: [
          Expanded(child: Text(title)),
          IconButton(onPressed: onDelete, icon: Icon(Icons.delete))
        ],
      ),
    );
  }
}