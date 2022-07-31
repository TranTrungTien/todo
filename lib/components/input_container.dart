import 'package:flutter/material.dart';
import 'package:learn/components/input.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(child: Input()),
          Container(
            decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: 50,
            height: double.infinity,
            margin: const EdgeInsets.only(left: 10),
            child: ElevatedButton(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
