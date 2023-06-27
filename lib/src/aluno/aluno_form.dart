import 'package:flutter/material.dart';
import 'package:gerenciador_turma/src/aluno/entity_aluno.dart';
import 'package:gerenciador_turma/src/database/database_helper_aluno.dart';

class AlunoForm extends StatelessWidget {
  AlunoForm({Key? key}) : super(key: key);
  final dBHelper = DatabaseHelperAluno.instance;
  //print(dBHelper.buscar())
  final GlobalKey<FormState> _key = GlobalKey();
  late Aluno aluno = Aluno(cod_aluno: null, nome_aluno: '', curso: '');

  Widget nomeAluno() {
    var controllerNome = TextEditingController();
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Nome Aluno'),
      controller: controllerNome,
      onSaved: (String? val) {
        aluno.nome_aluno = val!;
      },
    );
  }

  Widget cursoAluno() {
    var controllerCurso = TextEditingController();
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Curso'),
      controller: controllerCurso,
      onSaved: (String? val) {
        aluno.curso = val!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Aluno'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              nomeAluno(),
              const SizedBox(
                height: 15,
              ),
              cursoAluno(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          _salvar(_key);
        },
        child: const Icon(Icons.check),
      ),
    );
  }

  _salvar(GlobalKey key) async {
    if (_key.currentState!.validate()) {
      // Sem erros na validação
      _key.currentState!.save();
      print("Nome ${aluno.nome_aluno}");
      print("Nome ${aluno.curso}");

      var alunoBd = Aluno(
          cod_aluno: aluno?.cod_aluno,
          nome_aluno: aluno.nome_aluno,
          curso: aluno.curso);
      final id = await dBHelper.salvar(aluno);
      print('linha inserida id: $id');
    } else {
      print('erro de validação');
    }
  }
}
