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
        final task = taskData.getTask(index);
        return CheckboxListTile(
          title: Text(
            task.title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              decoration: task.isCompleted ? TextDecoration.lineThrough : null,
            ),
          ),
          activeColor: Colors.lightBlueAccent,
          value: task.isCompleted,
          onChanged: (isChecked) {
            taskData.toggleTaskProgress(index, isChecked);
          },
        );
      },
    );
  }
}
