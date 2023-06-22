import 'package:flutter/material.dart';
import 'package:gerenciador_turma/src/home/home.dart';
import 'package:gerenciador_turma/src/shared/app_scaffold.dart';
import 'package:gerenciador_turma/src/themes/color_schemes.g.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Escolas Seguras',
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
      initialRoute: '/auth/login',
      routes: {
        '/auth/login': (context) => const HomePage(),
        //'/auth/registration': (context) => const RegistrationPage(),
        //'/home': (context) => const HomePage(),
        //'/complaint': (context) => const ComplaintPage(),
        //'/panel': (context) => PanelPage(),
      },
    );
  }
}
