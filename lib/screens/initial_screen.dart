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
              'Aprender Flutter ',
              'assets/images/dash.png',
              3,
            ),
            Task(
              'Andar de Bike',
              'assets/images/bike.webp',
              2,
            ),
            Task(
              'Jogar',
              'assets/images/jogar.jpg',
              5,
            ),
            Task(
              'Ler',
              'assets/images/livro.jpg',
              2,
            ),
            Task(
              'Meditar',
              'assets/images/meditar.jpeg',
              5,
            ),
            SizedBox(height: 80,)
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
