import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// models
import '../models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          FlatButton(
            child: Text(
              'Add',
              style: TextStyle(fontSize: 17.0),
            ),
            color: Colors.lightBlueAccent,
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            onPressed: () {
              if (newTaskTitle != null) {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
              }
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
