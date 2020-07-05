import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
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
                newTask = value;
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
                print('newTask: $newTask');
              },
            )
          ],
        ),
      ),
    );
  }
}
