import 'package:flutter/material.dart';

class PoliticaDeDrivacidade extends StatelessWidget {
  const PoliticaDeDrivacidade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Política De Privacidade"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Política de Privacidade\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Text(
                "Última atualização: 13/03/2025 \n\n O Buscar CEP respeita sua privacidade e está comprometido com a proteção dos seus dados pessoais. Esta Política de Privacidade explica como coletamos, usamos e protegemos suas informações ao utilizar nosso aplicativo.\n",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "1. Informações Coletadas\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Nosso aplicativo pode coletar as seguintes informações:\n\n",
                    ),
                    TextSpan(
                      text: "Dados fornecidos pelo usuário: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Caso o app tenha alguma funcionalidade de cadastro, podemos coletar nome, e-mail e outras informações.\n\n",
                    ),
                    TextSpan(
                      text: "Dados de uso: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Podemos coletar informações sobre como você usa o aplicativo, como consultas realizadas e interações dentro do app.\n\n",
                    ),
                    TextSpan(
                      text: "Informações de localização: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Se autorizado, podemos acessar sua localização para melhorar os resultados das buscas.\n\n",
                    ),
                    TextSpan(
                      text: "2. Uso das Informações\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "As informações coletadas são utilizadas para:\n\n",
                    ),
                    TextSpan(
                      text:
                          "• Melhorar a experiência do usuário e a precisão das buscas.\n",
                    ),
                    TextSpan(
                      text:
                          "• Personalizar e otimizar o funcionamento do aplicativo.\n",
                    ),
                    TextSpan(
                      text:
                          "• Garantir a segurança e evitar atividades fraudulentas.\n\n",
                    ),
                    TextSpan(
                      text: "3. Compartilhamento de Dados\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Não compartilhamos suas informações pessoais com terceiros, exceto quando necessário para cumprir exigências legais ou melhorar a funcionalidade do app (exemplo: integração com serviços de CEP).\n\n",
                    ),
                    TextSpan(
                      text: "4. Segurança dos Dados\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Adotamos medidas de segurança para proteger suas informações contra acessos não autorizados, perdas ou alterações.\n\n",
                    ),
                    TextSpan(
                      text: "5. Seus Direitos\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Você pode solicitar a exclusão dos seus dados ou revogar permissões a qualquer momento nas configurações do aplicativo.\n\n",
                    ),
                    TextSpan(
                      text: "6. Alterações na Política\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Podemos atualizar esta Política de Privacidade periodicamente. Recomendamos que você revise esta página para estar sempre informado sobre eventuais mudanças.\n\n",
                    ),
                    TextSpan(
                      text:
                          "Se tiver dúvidas, entre em contato conosco pelo e-mail: buscarcep@gmail.com",
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
