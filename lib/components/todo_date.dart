import 'package:flutter/material.dart';

class TodoDate extends StatelessWidget {
  const TodoDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 80,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "5",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "wed",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ]),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: Colors.grey[100],
              ),
              margin: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You have 5 tasks today",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
