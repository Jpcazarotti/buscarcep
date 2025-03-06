import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar CEP"),
        centerTitle: true,
      ),
      drawer: Drawer(
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
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.policy_outlined),
              title: const Text("Política de Privacidade"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
