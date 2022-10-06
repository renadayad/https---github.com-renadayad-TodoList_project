import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoproject/models/task_dat.dart';

class AddTask extends StatelessWidget {
  final Function addtaskcall;
  AddTask(this.addtaskcall);

  @override
  Widget build(BuildContext context) {
    String? newTask;

    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          Text('Add Task',
              style: TextStyle(
                  fontSize: 31,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          TextField(
            autofocus: true,
            onChanged: (nwevalue) {
              newTask = nwevalue;
            },
          ),
          SizedBox(
            height: 40,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newTask!);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lime,
              primary: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
