import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      the
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person),
          title: Text("Home Page"),
          actions: [
            Icon(CupertinoIcons.add_circled)
          ],
          centerTitle: false,
          bottom: PreferredSize(
              preferredSize: Size(double.infinity, 50),
              child: Text("This is bottom")
          ),
        ),
        body: Text("This is body"),
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Text("+")
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
            ]
        ),
      ),
    )
  );
}