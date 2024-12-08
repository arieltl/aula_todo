import 'package:flutter/material.dart';

class CreateTodoPage extends StatefulWidget {
  const CreateTodoPage({super.key});

  @override
  State<CreateTodoPage> createState() => _CreateTodoPageState();
}

class _CreateTodoPageState extends State<CreateTodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create To Do"),
      ),
      body: Card(
        margin: EdgeInsets.all(30),
        color: Colors.blueGrey.shade100,
        child:  Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                "Todo Title:",
                      
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "example@gmail.com",
                  labelText: "email",
                  border: OutlineInputBorder()
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Create"))
          ],
        ),
      ),
     
    );
  }
}