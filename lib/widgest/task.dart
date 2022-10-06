import 'package:flutter/material.dart';
import 'package:todoproject/models/task_dat.dart';
import 'package:todoproject/widgest/taskTitel.dart';
import 'package:provider/provider.dart';
import '../models/task_models.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: Provider.of<TaskData>(context).tasks.length,
          itemBuilder: (context, index) {
            return TaskTitel(
              isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
              tasktitle: Provider.of<TaskData>(context).tasks[index].name,
              checkboxchange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);

                // setState(() {
                //  Provider.of<TaskData>(context).tasks[index].doneChange();
                // });
              },
              TaskDelet: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
    
    // return ListView(
    //   children: [
    //     TaskTitel(
    //       tasktitle: tasks[0].name,
    //       isChecked: tasks[0].isDone,
    //     ),
    //     TaskTitel(
    //       tasktitle: tasks[1].name,
    //       isChecked: tasks[1].isDone,
    //     ),
    //     TaskTitel(
    //       tasktitle: tasks[2].name,
    //       isChecked: tasks[2].isDone,
    //     ),
    //   ],
    // );
  

