import 'package:flutter/foundation.dart';
import 'dart:collection';

// models
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy detergent'),
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy detergent'),
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy detergent'),
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy detergent'),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  Task getTask(int index) {
    return _taskList[index];
  }

  void addTask(String newTaskTitle) {
    _taskList.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  void toggleTaskProgress(int index, bool isCompleted) {
    _taskList[index].isCompleted = isCompleted;
    notifyListeners();
  }

  void deleteTask(int index) {
    _taskList.removeAt(index);
    notifyListeners();
  }
}
