import 'package:flutter/material.dart';
import 'package:gerenciador_turma/src/shared/app_scaffold.dart';

class TurmaPage extends StatelessWidget {
  const TurmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final authService = Provider.of<AuthService>(context);

    return AppScaffold(
      pageTitle: 'Turmas',
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('auth Sevice'), //authService.user?.login ?? ''),
        ),
      ),
    );
  }
}
