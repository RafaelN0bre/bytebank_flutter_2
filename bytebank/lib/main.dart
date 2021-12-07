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



class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DashBoard'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/bytebank_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                height: 100,
                width: 150,
                color: Theme.of(context).colorScheme.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    Text(
                      'Contatos',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}