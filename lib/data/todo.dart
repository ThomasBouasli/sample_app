class Todo {
  final String title;
  final bool completed;

  Todo({
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      completed: json['completed'],
    );
  }
}
