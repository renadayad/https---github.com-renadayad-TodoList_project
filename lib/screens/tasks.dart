import 'package:flutter/material.dart';
import 'package:todoproject/models/task_dat.dart';
import 'package:todoproject/screens/add_task.dart';
import 'package:todoproject/widgest/task.dart';
import 'package:provider/provider.dart';
import 'package:todoproject/models/task_dat.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // ignore: prefer_const_constructors
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTask((newTask) {
                      // setState(() {
                      //   tasks.add(Task(name: newTask));
                      //   Navigator.pop(context);
                      // });
                    }))),
          );
        },
        backgroundColor: Colors.indigo,
        // ignore: prefer_const_constructors
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lime,
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check, size: 40, color: Colors.black),
                SizedBox(width: 20),
                Text(
                  "My Task",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
