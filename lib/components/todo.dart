import 'package:flutter/material.dart';
import 'package:learn/models/todo_model.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    Key? key,
    required this.index,
    required this.handleClickItem,
    this.selectedItem,
    required this.todo,
  }) : super(key: key);
  final int index;
  final ToDo todo;
  final int? selectedItem;
  final Function handleClickItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: index == selectedItem ? Colors.white : Colors.grey[100],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: ListTile(
        onTap: () {
          if (index != selectedItem) {
            handleClickItem(
              todo,
              context,
            );
          }
        },
        focusColor: Colors.blue,
        leading: Container(
          margin: const EdgeInsets.only(top: 8),
          child: Icon(Icons.check_circle_outline,
              color:
                  (index == selectedItem) ? Colors.greenAccent : Colors.grey),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            todo.taskName,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        subtitle: index == selectedItem
            ? const Text("Done !")
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(todo.detail,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                  RichText(
                      text: TextSpan(children: [
                    const TextSpan(
                        text: "Due Date : ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                    TextSpan(
                        text: todo.dueDate.year.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ))
                  ])),
                ],
              ),
        trailing: IconButton(
          onPressed: (index == selectedItem
              ? null
              : () {
                  print("edit");
                }),
          icon: const Icon(Icons.edit),
          color: index == selectedItem ? Colors.grey[300] : Colors.grey,
        ),
      ),
    );
  }
}
