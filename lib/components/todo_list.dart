import 'package:flutter/material.dart';
import 'package:learn/components/todo_date.dart';
import 'package:learn/components/todo_list_container.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(children: const [
          TodoDate(),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: TodoListContainer(),
          ),
        ]),
      ),
    );
  }
}
