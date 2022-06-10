import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  // Generate some dummy data
  final List increasinglyList = List.generate(1000, (index) {
    return {
      "id": index,
      "title": "Este es el título $index",
      "subtitle": "Este es el subtítulo $index"
    };
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal[50],
          appBar: AppBar(
            title: Text('ListView.builder'),
            centerTitle: true,
            backgroundColor: Colors.green[200],
          ),
          body: SafeArea(
              child: ListView.builder(
            itemCount: increasinglyList.length,
            itemBuilder: (context, index) => Card(
              color: Colors.blue[100],
              elevation: 6,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(increasinglyList[index]["id"].toString()),
                  backgroundColor: Colors.purple,
                ),
                title: Text(increasinglyList[index]["title"]),
                subtitle: Text(increasinglyList[index]["subtitle"]),
                trailing: Icon(Icons.add_a_photo),
              ),
            ),
          ))),
    );
  }
}
