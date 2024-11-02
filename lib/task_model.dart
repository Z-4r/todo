import 'package:flutter/material.dart';

class Task {
  String name;
  bool isDone;

  Task({required this.name, this.isDone = false});
}

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [];
  bool _isDarkMode = false;

  List<Task> get tasks => _tasks;
  bool get isDarkMode => _isDarkMode;

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTaskDone(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
