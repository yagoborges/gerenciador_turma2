import 'package:flutter/material.dart';
import 'package:gerenciador_turma/src/shared/app_scaffold.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //final authService = Provider.of<AuthService>(context);

    return AppScaffold(
      pageTitle: 'Home',
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('auth Sevice'),//authService.user?.login ?? ''),
        ),
      ),
    );
  }
}
