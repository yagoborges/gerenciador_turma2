import 'package:flutter/material.dart';
//import 'package:gerenciador_turma/src/aluno/entity_aluno.dart';
import 'package:gerenciador_turma/src/database/database_helper_aluno.dart';
import 'package:gerenciador_turma/src/shared/app_scaffold.dart';

class AlunoPage extends StatelessWidget {
  AlunoPage({super.key});
  final dBHelper = DatabaseHelperAluno.instance;

  @override
  Widget build(BuildContext context) {
    //final authService = Provider.of<AuthService>(context);
    // List<Aluno> listaAlunos = dBHelper.buscar();
    final listaAlunos = [
      {'matricula': '1', 'nome_aluno': 'Liliane Borges', 'curso': 'Matemática'},
      {
        'matricula': '2',
        'nome_aluno': 'Yago Leandro Borges',
        'curso': 'Sistemas de Informação'
      },
      {
        'matricula': '3',
        'nome_aluno': 'José Felipe Duarte',
        'curso': 'Sistemas de Informação'
      },
    ];

    return AppScaffold(
      pageTitle: const Text('Alunos'),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).pushNamed('/aluno_form');
        },
        child: const Icon(Icons.add),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: listaAlunos.length,
        itemBuilder: (context, i) {
          var alunos = listaAlunos[i];
          return ListTile(
            title: Text(alunos['nome_aluno'].toString()),
            subtitle: Text("Curso: ${alunos['curso']}"),
            trailing: Container(
              width: 80,
              child: Row(children: [
                //IconButton(
                //onPressed: () {},
                //icon: Icon(Icons.remove_red_eye_rounded),
                //color: Colors.grey,
                //),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                  color: Colors.orange,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
