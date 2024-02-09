import 'package:hive_flutter/hive_flutter.dart';

class DB {
  List todos = [];

  // reference the box
  final _todosBox = Hive.box("todos");

  // run the below method when it's 1st time ever running the app
  Future<void> createInitialData() async {
    todos = [
      ["Go for a walk", false],
      ["Thicccc asss boaaa", false],
      ["Code the project", true],
    ];
  }

  void loadData() {
    todos = _todosBox.get("TODOLIST");
  }

  void updateData() {
    _todosBox.put("TODOLIST", todos);
  }
}
