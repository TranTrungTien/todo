import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learn/components/input_container.dart';

class TodoForm extends StatelessWidget {
  const TodoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        width: width * 0.8,
        height: height * 0.6,
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: Colors.cyanAccent[500],
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.grey,
                  Colors.blueGrey,
                ],
              )),
          child: Form(
              child: Column(
            children: [
              const InputContainer(
                label: "Task Name",
                hintLabel: "Your task name",
              ),
              const SizedBox(
                height: 20,
              ),
              const InputContainer(
                label: "Description",
                hintLabel: "Your description",
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Save'))
            ],
          )),
        ),
      ),
    );
  }
}
