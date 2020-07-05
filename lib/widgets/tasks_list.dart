import 'package:flutter/material.dart';

// modals
import '../modals/task.dart';

// widgets
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> taskList;
  final Function checkBoxCallback;

  TasksList({this.taskList, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (_, index) {
        return TaskTile(
          taskList: taskList,
          index: index,
          checkBoxCallback: (bool checkboxState) {
            checkBoxCallback(index, checkboxState);
          },
        );
      },
    );
  }
}
