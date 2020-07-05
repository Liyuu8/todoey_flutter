import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// models
import '../models/task_data.dart';

// widgets
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).taskCount,
      itemBuilder: (_, index) => TaskTile(index: index),
    );
  }
}
