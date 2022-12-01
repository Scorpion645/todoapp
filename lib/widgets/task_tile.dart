import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  const TaskTile({super.key, required this.isChecked, required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: isChecked,
        onChanged: null,
        // onChanged: checkboxChange,
        activeColor: Colors.teal[400],
      ),
    );
  }
}


// (bool? newValue) {
//           setState(() {
//             isChecked = newValue!;
//           });
//         },


