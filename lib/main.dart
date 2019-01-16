import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_demo/apis/api.dart';
import 'package:flutter_json_demo/models/todo.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todos = new List<Todo>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Json Data Using Demo"),
          backgroundColor: Colors.amber,
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, position) {
            return ListTile(
              title: Text(todos[position].title),
              
            );
          },
        ));
  }

  getTodoList() {
//static Future getTodos() oldugu icin statik nesneye erisime dikkat
    Api.getTodos().then((response) {
      Iterable todos = json.decode(response.body);
      this.todos = todos.map((model) => Todo.fromJson(model)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    getTodoList();
  }
}
