import 'package:flutter/material.dart';

Widget showConfirmBox(BuildContext context, String taskName) {
  return AlertDialog(
    title: const Text('Please Confirm'),
    content: RichText(
        text: TextSpan(children: [
      const TextSpan(
          text: "Your Task ",
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500)),
      TextSpan(
          text: taskName,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20)),
      const TextSpan(
          text: ' is done !!! Are you sure ???',
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500)),
    ])),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: const Text('No')),
      TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('Done')),
    ],
  );
}
