import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() listTileDelete;

  const TaskTile({super.key, required this.isChecked, required this.taskTitle, required this.checkboxChange, required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxChange,
        // onChanged: checkboxChange,
        activeColor: Colors.teal[400],
      ),
      onLongPress: listTileDelete,
    );
  }
}


// (bool? newValue) {
//           setState(() {
//             isChecked = newValue!;
//           });
//         },


