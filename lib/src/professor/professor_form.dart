import 'package:flutter/material.dart';

class ProfessorForm extends StatelessWidget {
  const ProfessorForm({super.key});

  Widget nomeAluno() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Nome Aluno'),
    );
  }

  Widget cursoAluno() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Curso'),
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
        onPressed: () {},
        child: const Icon(Icons.check),
      ),
    );
  }
}
