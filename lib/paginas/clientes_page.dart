import 'package:flutter/material.dart';

class ClientePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cliente'),
      ),
      body: Container(
        child: TextButton(
            child: Text('Preencher'),
            onPressed: () {
              Navigator.of(context).popAndPushNamed('/');
            }),
      ),
    );
  }
}
