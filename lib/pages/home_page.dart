import 'package:aula_todo/models/to_do.dart';
import 'package:aula_todo/pages/create_todo.dart';
import 'package:aula_todo/widgets/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<ToDo> toDos = [
  ToDo(title: "Buy milk", completed: false),
  ToDo(title: "Buy eggs", completed: false),
  ToDo(title: "Buy bread", completed: false),
  ToDo(title: "Buy butter", completed: false),
  ToDo(title: "Buy cheese", completed: false),
  ToDo(title: "Buy ham", completed: false),
  ToDo(title: "Buy bacon", completed: false),
  ToDo(title: "Buy sausage", completed: false),
  ToDo(title: "Buy orange juice", completed: false),
  ToDo(title: "Buy coffee", completed: false),
  ToDo(title: "Buy tea", completed: false),
  ToDo(title: "Buy sugar", completed: false),
  ToDo(title: "Buy salt", completed: false),
  ToDo(title: "Buy pepper", completed: false),
];

class _HomePageState extends State<HomePage> {
  int count = 0;



  @override
  Widget build(BuildContext context)  {
    return Scaffold(
        appBar: AppBar(
          title: Text("To Do"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () async{
                final result = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateTodoPage()));
                if (result is ToDo) {
                  setState(() {
                    toDos.add(result);
                  });
                }
              },
            ),
            TextButton(onPressed: (){}, child: Text("Exemplo ")),
          ],
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index){
          if (index == toDos.length){
            return SizedBox(height: 80);
          }
          return ToDoTile(toDo: toDos[index]);
           
        

        },
        itemCount: toDos.length+1),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){},
        //   child: Text("Add"), 
        // )
    );
  }
}
