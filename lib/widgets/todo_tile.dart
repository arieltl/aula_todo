

import 'package:aula_todo/models/to_do.dart';
import 'package:flutter/material.dart';

class ToDoTile extends StatefulWidget {
  const ToDoTile({super.key, required this.toDo});

  final ToDo toDo;

  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
            title: Text(widget.toDo.title),
            trailing: Checkbox(
              value: widget.toDo.completed,
              onChanged: (bool? value){
                setState(() {
                  widget.toDo.completed = value!;
                });
              },
            ),
           
          );
  }
}

