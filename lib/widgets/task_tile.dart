import 'package:flutter/material.dart';

// modals
import '../modals/task.dart';

class TaskTile extends StatelessWidget {
  final List<Task> taskList;
  final int index;
  final Function checkBoxCallback;

  TaskTile({this.taskList, this.index, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        taskList[index].title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          decoration:
              taskList[index].isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      activeColor: Colors.lightBlueAccent,
      value: taskList[index].isCompleted,
      onChanged: checkBoxCallback,
    );
  }
}
