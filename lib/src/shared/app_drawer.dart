import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //final authService = Provider.of<AuthService>(context, listen: false);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  child: Text('Usuário'
                    //authService.user?.name[0] ?? '-',
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text('Usuário'
                  //StringHelpers.truncateWithEllipsis(
                    //15,
                    //authService.user?.name ?? '-',
                  //),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              //Navigator.popAndPushNamed(context, '/home');
            },
          ),
          ListTile(
            title: const Text('Denúncias'),
            onTap: () {
              //Navigator.popAndPushNamed(context, '/complaint');
            },
          ),
          ListTile(
            title: const Text('Painel'),
            onTap: () {
              //Navigator.pushNamed(context, '/panel');
            },
          ),
          ListTile(
            title: const Text('Sair'),
            onTap: () {
              //authService.logout().then((value) => value);
              ///Navigator.pop(context);
              //Navigator.popAndPushNamed(context, '/auth/login');
            },
          ),
        ],
      ),
    );
  }
}
