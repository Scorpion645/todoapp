import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/task_tile.dart';

import '../models/task.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

return Consumer<TaskData>(builder: (context, taskdata, child) {
  return ListView.builder(
        itemCount: taskdata.tasks.length,
        itemBuilder: (content, index) {
          return TaskTile(
              isChecked: taskdata.tasks[index].isDone,
              taskTitle: taskdata.tasks[index].name,
              checkboxChange: (newValue) {
                // setState(() {
                //   widget.tasks[index].doneChanged();
                // });
              });
        });});


    // return ListView(
    //   children: [
    //     TaskTile(),
    //     TaskTile(),
    //     TaskTile(),
    //   ],
    // );
  }
}
