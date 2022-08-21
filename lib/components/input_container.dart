import 'package:flutter/material.dart';
import 'package:learn/components/input.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({Key? key, required this.label, required this.hintLabel})
      : super(key: key);
  final String label;
  final String hintLabel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Text(label),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Input(
            hintLabel: hintLabel,
          )),
        ],
      ),
    );
  }
}
