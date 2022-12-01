import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  
  const TasksList({
    Key? key, required this.tasks,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (content, index) {
          return TaskTile(
              isChecked: widget.tasks[index].isDone,
              taskTitle: widget.tasks[index].name,
              checkboxChange: (newValue) {
                setState(() {
                  widget.tasks[index].doneChanged();
                });
              });
        });
    // return ListView(
    //   children: [
    //     TaskTile(),
    //     TaskTile(),
    //     TaskTile(),
    //   ],
    // );
  }
}
