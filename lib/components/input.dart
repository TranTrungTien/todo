import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintStyle: TextStyle(decoration: TextDecoration.underline),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.purple, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5)),
        focusColor: Colors.pink,
        hintText: "Add your work must do",
      ),
    );
  }
}
