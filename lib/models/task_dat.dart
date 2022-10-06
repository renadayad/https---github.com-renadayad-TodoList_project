import 'package:flutter/material.dart';
import 'package:todoproject/models/task_models.dart';
import 'package:todoproject/screens/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go work'),
    Task(name: 'buy home'),
    Task(name: 'buy car'),
  ];
  void addTask(String newTask) {
    tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
