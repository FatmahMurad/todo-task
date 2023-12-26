import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodoProvider extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get getTodos => _todos;

  void addTodo(String title) {
    // int newId = todos.length + 1;
    Todo newTodo = Todo(id: _todos.length + 1, title: title);
    // whenever this function runs it adds an id number greater than the length of the list by one
    // and creates a new title as typed in the textfield()
    _todos.add(newTodo);
    notifyListeners();
  }

  void finishTask(int id) {
    var updatedToDo = _todos.firstWhere((element) => element.id == id);
    // we want to access a list and use a method that goes through every element in the list
    // and checks if the checkbox selected by the user matches an id that exists in the list
    // if it does match ... it checks the box, if the function runs again the box gets unchecked

    updatedToDo.done = !updatedToDo.done;
    notifyListeners();
  }

  void deleteTask(int id) {
    _todos.removeWhere((elementId) => elementId.id == id);
    notifyListeners();
  }
}
