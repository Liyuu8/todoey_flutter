import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// models
import '../models/task_data.dart';

class TaskTile extends StatelessWidget {
  final int index;

  TaskTile({this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return CheckboxListTile(
          title: Text(
            taskData.taskList[index].title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              decoration: taskData.taskList[index].isCompleted
                  ? TextDecoration.lineThrough
                  : null,
            ),
          ),
          activeColor: Colors.lightBlueAccent,
          value: taskData.taskList[index].isCompleted,
          onChanged: (isChecked) {
            taskData.toggleTaskProgress(index, isChecked);
          },
        );
      },
    );
  }
}
