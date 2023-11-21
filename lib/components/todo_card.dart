

import 'package:flutter/material.dart';
import 'package:sample_app/data/todo.dart';

class TodoCard extends StatefulWidget {
  const TodoCard({super.key});

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {

  Todo? todo;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: CheckboxListTile(
        onChanged: (value) {
          
        },
        value: todo.completed,
      ),
    );
  }
}