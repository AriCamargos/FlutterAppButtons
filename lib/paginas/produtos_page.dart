import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdutosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: Container(
        child: TextButton(
          child: Text('Fechar tela'),
          onPressed: () {
            Navigator.of(context).pop(); //pop fecha a tela, arranca a tela
          },
        ),
      ),
    );
  }
}
