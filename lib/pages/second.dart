import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample_app/components/main_drawer.dart';
import 'package:sample_app/components/todo_list.dart';
import 'package:sample_app/data/todo.dart';

class SecondPage extends StatelessWidget {
  Future<List<Todo>> fetchTodo() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var decoded = jsonDecode(response.body) as List;
      return decoded.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load todos');
    }
  }

  final String data;

  const SecondPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Second Page")),
        drawer: const MainDrawer(),
        body: FutureBuilder(
          future: fetchTodo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            if (!snapshot.hasData) {
              return const Text("No data");
            }

            return TodoList(todos: snapshot.data as List<Todo>);
          },
        ));
  }
}
