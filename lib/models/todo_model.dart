import 'package:learn/utils/generate_id.dart';

class ToDo {
  String id = getRandomString();
  final String taskName;
  final DateTime start;
  final DateTime dueDate;
  final String detail;
  bool isDone = false;
  get getTaskName => taskName;
  get getStart => start;
  get getDueDate => dueDate;
  get getDetail => detail;
  get getIsDone => isDone;
  set setIsDone(isDone) => isDone = isDone;
  ToDo(this.taskName, this.start, this.dueDate, this.detail);
}
