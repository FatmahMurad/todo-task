import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:todo_app/widgets/todo_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/todo_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo"),
        backgroundColor: Colors.amber.shade300,
        actions: [
          IconButton(
            onPressed: () => GoRouter.of(context).push('/add'),
            icon: const Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Consumer<TodoProvider>(
        builder: (context, todoProvider, child) => ListView.builder(
          shrinkWrap: true,
          itemCount: todoProvider.getTodos.length,
          itemBuilder: (BuildContext context, int index) {
            return TodoTile(
              todo: todoProvider.getTodos[index],
            );
          },
        ),
      ),
    );
  }
}
