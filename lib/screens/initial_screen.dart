import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/data/task_inherited.dart';
import 'package:nosso_primeiro_projeto/screens/form_screen.dart';

import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Primeiros Passos'),
        leading: const Icon(Icons.add_task),
      ),
      body: ListView(
          children: TaskInherited.of(context).taskList,
          padding: EdgeInsets.only(top: 8,bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(  // botão
        onPressed: () {          //ação ao pressinar
          Navigator.push(              //empurrar
              context,
              MaterialPageRoute(
              builder: (contextNew) => FormScreen(taskContext: context,)    //página a ser trazida
            ),
          );
        },
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.add),           //ícone do botão
      ),
    );
  }
}
