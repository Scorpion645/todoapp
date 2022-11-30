import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Go Shopping'),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  const TaskCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
      activeColor: Colors.teal[400],
    );
  }
}
