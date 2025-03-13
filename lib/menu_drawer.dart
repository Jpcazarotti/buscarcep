import 'package:buscarcep/politicadeprivacidade_page.dart';
import 'package:buscarcep/sobrenos_page.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff00416b),
            ),
            child: Text(
              "Buscar CEP",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("Sobre o Buscar CEP"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SobreNos()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.policy_outlined),
            title: const Text("Política de Privacidade"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PoliticaDeDrivacidade()),
              );
            },
          ),
        ],
      ),
    );
  }
}
