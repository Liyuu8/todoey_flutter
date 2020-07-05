import 'package:flutter/foundation.dart';

// models
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList = [
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

  int get taskCount {
    return taskList.length;
  }

  void addTask(String newTaskTitle) {
    taskList.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  void toggleTaskProgress(int index, bool isCompleted) {
    taskList[index].isCompleted = isCompleted;
    notifyListeners();
  }
}
