import 'package:flutter/widgets.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:flutter/material.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  // mark attribute as private _
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  // User able to access elements via 'tasks' variable but it cannot be modified if it is changed directly.
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
