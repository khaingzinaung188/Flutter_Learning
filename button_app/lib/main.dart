import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                print("Raised Button Click");
              },
              child: Text("Elevated Button")),
          TextButton(
              onPressed: () {
                print("Text Button Click");
              },
              child: Text("Text Button")),
          OutlinedButton(
              onPressed: () {
                print("Outlined Button Click");
              },
              child: Text("Outline Button")),
          IconButton(
              onPressed: () {
                print("Icon Button Click");
              },
              icon: Icon(Icons.thumb_down)),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.red,
          )
        ],
      ),
    ),
  ));
}
