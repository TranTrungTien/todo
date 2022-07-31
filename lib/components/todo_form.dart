import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learn/components/input_container.dart';

class TodoForm extends StatelessWidget {
  const TodoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
          child: Column(
        children: [
          InputContainer(),
          InputContainer(),
        ],
      )),
    );
  }
}
