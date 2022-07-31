import 'package:flutter/material.dart';
import 'package:learn/components/confirm_box.dart';
import 'package:learn/components/todo.dart';
import 'package:learn/models/todo_model.dart';

class TodoListContainer extends StatefulWidget {
  const TodoListContainer({Key? key}) : super(key: key);

  @override
  State<TodoListContainer> createState() => _TodoListContainerState();
}

class _TodoListContainerState extends State<TodoListContainer> {
  List<ToDo> todoList = [
    ToDo("Learn Java", DateTime(2020), DateTime(2021), "learn Java more"),
    ToDo("Learn JavaScript", DateTime(2020), DateTime(2021),
        "learn JavaScript more"),
    ToDo("Learn Cpp", DateTime(2020), DateTime(2021), "learn Cpp more"),
    ToDo("Learn C", DateTime(2020), DateTime(2021), "learn C more"),
    ToDo("Learn Flutter", DateTime(2020), DateTime(2021), "learn Flutter more"),
    ToDo("Learn Golang", DateTime(2020), DateTime(2021), "learn Golang more"),
    ToDo("Learn .....", DateTime(2020), DateTime(2021), "learn more ...."),
  ];
  void handleClickItem(ToDo todo, BuildContext context) {
    Future<dynamic> result = showDialog(
        context: context,
        builder: (BuildContext context) {
          return showConfirmBox(context, todo.taskName);
        });
    result.then((value) => print(value)).catchError((err) => print(err));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return TodoItem(
            todo: todoList[index],
            selectedItem: 0,
            index: index,
            handleClickItem: handleClickItem,
          );
        });
  }
}
