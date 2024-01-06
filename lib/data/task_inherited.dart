import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Tasks> taskList = [
  Tasks('Estudar Flutter', 'assets/images/dash.png', 3),
  Tasks('Andar de Bike', 'assets/images/bike.jpg', 2),
  Tasks('Ler 50 páginas', 'assets/images/ler.jpg', 1),
  Tasks('Meditar', 'assets/images/meditar.jpeg', 4),
  Tasks('Jogar', 'assets/images/kako.jpg', 0),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Tasks(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
