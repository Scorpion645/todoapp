import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'buy a gift'),
    Task(name: 'repair a car'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (content, index) {
          return TaskTile(
              isChecked: tasks[index].isDone,
              taskTitle: tasks[index].name,
              checkboxChange: (newValue) {
                setState(() {
                  tasks[index].doneChanged();
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
