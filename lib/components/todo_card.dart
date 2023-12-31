import 'package:flutter/material.dart';
import 'package:sample_app/data/todo.dart';

class TodoCard extends StatefulWidget {
  final Todo todo;

  const TodoCard({super.key, required this.todo});

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  late Todo todo;
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    todo = widget.todo;
    isSelected = todo.completed;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (value) {
          setState(() {
            isSelected = value!;
          });
        },
        value: isSelected,
      ),
      title: Text(
        todo.title,
      ),
    );
  }
}
