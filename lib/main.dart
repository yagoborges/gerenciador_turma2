import 'package:flutter/material.dart';
import 'package:gerenciador_turma/src/turma/turma_page.dart';

import 'package:gerenciador_turma/src/themes/color_schemes.g.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciador de Turmas',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      initialRoute: '/turma_page',
      routes: {
        //'/auth/login': (context) => const TurmaPage(),
        //'/auth/registration': (context) => const RegistrationPage(),
        '/turma_page': (context) => const TurmaPage(),
        //'/complaint': (context) => const ComplaintPage(),
        //'/panel': (context) => PanelPage(),
      },
    );
  }
}
