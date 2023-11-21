import 'package:flutter/material.dart';
import 'package:sample_app/components/todo_card.dart';
import 'package:sample_app/data/todo.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  const TodoList({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return TodoCard(todo: todos[index]);
      },
    );
  }
}
