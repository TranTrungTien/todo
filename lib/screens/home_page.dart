import "package:flutter/material.dart";
import 'package:learn/components/todo_header.dart';
import 'package:learn/components/todo_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          centerTitle: true,
          leading: Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: const Icon(Icons.menu)),
          backgroundColor: Colors.blue[900],
          elevation: 0,
          title: Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "5 May",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )),
          actions: [
            Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.date_range)))
          ],
        ),
      ),
      backgroundColor: Colors.blue[900],
      body: SafeArea(
          child: Center(
        child: Column(children: const [
          TodoHeader(),
          Expanded(
            child: TodoList(),
          )
        ]),
      )),
    );
  }
}
