import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({Key? key, required this.hintLabel}) : super(key: key);
  final String hintLabel;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(hintLabel),
        hintStyle: TextStyle(fontSize: 12, color: Colors.grey[500]),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.purple, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5)),
        focusColor: Colors.pink,
      ),
    );
  }
}
