import 'package:bytebank/screens/dashboard.dart';
import 'package:bytebank/screens/formulariocontato.dart';
import 'package:bytebank/screens/list_contatos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ByteBankApp());
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(
                  primary: Colors.green[900],
                  secondary: Colors.blueAccent[700])),
      home: Dashboard()
    );
  }
}