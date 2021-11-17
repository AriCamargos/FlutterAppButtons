import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PedidosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedidos'),
      ),
      body: Container(
        child: TextButton(
            child: Text('Voltar ao menu'),
            onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/');
              }
            ),
      ),
    );
  }
}
