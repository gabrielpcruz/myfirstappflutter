import 'package:flutter/material.dart';
import 'package:meuprimeiroappflutter/components/task.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({Key? key}) : super(key: key);

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: ListView(
          children: const [
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              5,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              2,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              5,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              2,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              5,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              2,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              5,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              2,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              5,
            ),
            Task(
              'Macarrão',
              'https://img.itdg.com.br/tdg/images/recipes/000/000/770/323683/323683_original.jpg',
              2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon( (opacidade ? Icons.visibility_off : Icons.remove_red_eye)),
      ),
    );
  }
}
