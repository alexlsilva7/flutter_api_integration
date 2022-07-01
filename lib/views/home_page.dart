import 'package:flutter/material.dart';
import 'package:flutter_api_integration/controllers/home_controller.dart';
import 'package:flutter_api_integration/views/components/todo_list_tile.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return ListView.builder(
              itemCount: controller.todos.length,
              itemBuilder: (context, index) {
                final todo = controller.todos[index];
                return TodoListTile(todo: todo);
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          controller.fetchAllTodos();
        },
      ),
    );
  }
}
