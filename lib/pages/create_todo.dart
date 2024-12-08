import 'package:aula_todo/models/to_do.dart';
import 'package:flutter/material.dart';

class CreateTodoPage extends StatefulWidget {
  const CreateTodoPage({super.key});

  @override
  State<CreateTodoPage> createState() => _CreateTodoPageState();
}

class _CreateTodoPageState extends State<CreateTodoPage> {


  final TextEditingController _titleController = TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create To Do"),
      ),
      body: Card(
        margin: const EdgeInsets.all(30),
        color: Colors.blueGrey.shade100,
        child:  Column(
          children: [
             Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Todo Title:",
                            
                    ),
                      Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      hintText: "example todo name",
                      labelText: "Title",
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                  ],
                ),
              ),
            ),
          
            Expanded(child: Container(
              // color: Colors.blue,
              ), flex: 2,),
            Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: ElevatedButton(onPressed: (){
                final toDo = ToDo(title: _titleController.text, completed: false);
                Navigator.of(context).pop(toDo);

              }, child: const Text("Create")),
            )
          ],
        ),
      ),
     
    );
  }
}