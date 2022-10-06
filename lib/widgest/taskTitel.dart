import 'package:flutter/material.dart';
import 'package:todoproject/models/task_models.dart';
import 'package:todoproject/models/task_models.dart';

class TaskTitel extends StatelessWidget {
  final bool isChecked;
  final tasktitle;
  final void Function(bool?) checkboxchange;
  final void Function() TaskDelet;

  //  List<Task> tasks = [
  //   Task(name: 'go work'),
  //   Task(name: 'buy home'),
  //   Task(name: 'buy car'),
  // ];

  TaskTitel(
      {required this.isChecked,
      required this.tasktitle,
      required this.checkboxchange,
      required this.TaskDelet});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
        Checkbox(
          activeColor: Colors.black,
          value: isChecked,
          onChanged: checkboxchange,
        ),
        IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {},
          // color: Theme.of(context).errorColor,
        ),
      ]),
      onLongPress: TaskDelet,
    );
  }
}
