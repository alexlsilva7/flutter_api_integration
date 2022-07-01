import 'package:flutter/material.dart';
import 'package:flutter_api_integration/models/todo_model.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({Key? key, required this.todo}) : super(key: key);
  final TodoModel todo;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: CheckboxListTile(
        title: Text(todo.title!),
        value: todo.completed,
        onChanged: (value) {},
      ),
    );
  }
}
