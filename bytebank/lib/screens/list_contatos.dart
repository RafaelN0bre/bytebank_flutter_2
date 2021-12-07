import 'package:bytebank/screens/formulariocontato.dart';
import 'package:flutter/material.dart';

class ListContatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Romário',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(
                builder: (context) => FormularioContato(),
              ))
              .then((newcontato) => debugPrint(newcontato.toString()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
