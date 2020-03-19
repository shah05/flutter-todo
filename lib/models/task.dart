import 'package:flutter/cupertino.dart';

class Task extends ChangeNotifier{
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }


}
