import 'package:flutter/material.dart';

class SobreNos extends StatelessWidget {
  const SobreNos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sobre o Buscar CEP"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xff000000),
              ),
              child: Image.asset(
                'assets/BuscaCEP.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "\nBem-vindo ao Buscar CEP! Nosso objetivo é facilitar a busca por CEPs de forma rápida e eficiente. Com uma interface intuitiva e simples de usar, permitimos que você encontre informações de endereços e localidades de maneira prática.\n\n Nosso compromisso é oferecer uma ferramenta confiável, sempre atualizada, para ajudar no dia a dia de quem precisa consultar CEPs, seja para envios, cadastros ou localização de endereços.\n\n Acreditamos que a tecnologia pode simplificar tarefas essenciais, e por isso trabalhamos constantemente para melhorar a experiência dos nossos usuários.\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "Obrigado por escolher o Buscar CEP!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
