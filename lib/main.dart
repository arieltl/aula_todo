import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This a counter app",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("The count is currently:"),
              Text(
                "$count",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              ElevatedButton(
                child: Text("Increase Count"),
                onPressed: (){
                  final apiResult = count+1;
                  setState(() {
                    count=apiResult;
                  });
                  print(count);
                },)
            ],
          ),
        ));
  }
}
