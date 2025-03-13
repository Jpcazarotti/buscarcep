import 'dart:convert';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:buscarcep/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _cep =
      TextEditingController(); // O '_' é parar dizer que a variável é privada!

  Map<String, dynamic>? _cepData;
  bool _isLoading = false;

  Future<void> _buscarCep() async {
    final String cep = _cep.text.trim();
    setState(() => _isLoading = true);
    // {} passou para =>, assim deixa em apenas uma linha o setState.
    final response =
        await http.get(Uri.parse("https://viacep.com.br/ws/$cep/json/"));
    setState(() {
      if (response.statusCode == 200) {
        _cepData = json.decode(response.body);
        if (_cepData!.containsKey("erro")) {
          _mostrarAlerta("CEP não encontrado.");
          _cepData = null;
        }
      } else {
        _mostrarAlerta("Erro ao buscar o CEP.");
        _cepData = null;
      }

      // print(_cepData);
    });
    setState(() => _isLoading = false);
  }

  void _mostrarAlerta(String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar CEP"),
        centerTitle: true,
      ),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _cep,
              keyboardType: TextInputType.number,
              inputFormatters: [
                MaskTextInputFormatter(
                    mask: '#####-###',
                    filter: {"#": RegExp(r'[0-9]')},
                    type: MaskAutoCompletionType.lazy),
              ],
              decoration: const InputDecoration(
                labelText: "Digite o CEP",
                hintText: "00000-000",
                hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _buscarCep,
              child: const Text("Buscar"),
            ),
            const SizedBox(
              height: 5,
            ),
            _isLoading
                ? const LinearProgressIndicator()
                : _cepData != null
                    ? Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Informações do CEP",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "CEP: ${_cepData?["cep"] ?? ""}",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Logradouro: ${_cepData?["logradouro"] ?? ""}",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Bairro: ${_cepData?["bairro"] ?? ""}",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Cidade: ${_cepData?["localidade"] ?? ""}",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Estado: ${_cepData?["uf"] ?? ""}",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(),
          ],
        ),
      ),
    );
  }
}
