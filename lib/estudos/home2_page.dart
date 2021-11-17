import 'package:flutter/material.dart';




class Home2Page extends StatefulWidget {
  _Home2PageState createState() { //o StateFul cria obrigatoriamente o createState
    print('Home2Page createState');
    return _Home2PageState();
  }
}

class _Home2PageState extends State<Home2Page> { //esse é o método de Stateful
  String nome = 'Ariana Camargos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nome),
        ),
        body: Column(
          children: [
            Text('Alterando estado'),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  //altera o que está dentro desse setState
                  nome = 'Alterando para Ariana Camargos 2 com stateful';
                });
              },
              child: Text('Alterando Nome'),
            )
          ],
        ));
  }
}
