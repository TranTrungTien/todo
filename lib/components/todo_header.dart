import 'package:flutter/material.dart';
import 'package:learn/components/todo_form.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "ToDay",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "2020",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[300]),
              )
            ],
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(25, 18, 25, 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onSecondaryContainer,
              // Background color
              primary: Colors.white,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const TodoForm();
                  });
            },
            child: Text(
              "ADD NEW",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[900]),
            ),
          ),
        ],
      ),
    );
  }
}
