import 'package:bytebank/models/contato.dart';
import 'package:flutter/material.dart';

class FormularioContato extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return FormularioContatoState();
  }
}

class FormularioContatoState extends State<FormularioContato> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _contaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome completo',
              ),
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _contaController,
                decoration: InputDecoration(
                  labelText: 'Número da conta',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final String nome = _nomeController.text;
                    final int? numConta = int.tryParse(_contaController.text);

                    final Contato newcontato = Contato(nome, numConta);
                    Navigator.pop(context, newcontato);
                  },
                  child: Text('Criar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
