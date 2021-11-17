import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBotoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navegação')),
      ),
      body: Container(
        width: double.infinity, // ocupa todo o espaço da tela
        child: Column(

          //crossAxisAlignment: CrossAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FloatingActionButton.extended(
              
              onPressed: (){},
              backgroundColor: Colors.pink,
              label:Text('Aprovado'),
              icon:Icon(Icons.thumb_up_alt_rounded),
            ),
            TextButton(
              child: Text('Clientes'),
              onPressed: () {
                Navigator.of(context).pushNamed('/clientes');
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.amber,
                onSurface: Colors.red,
              ),
              child: Text('Pedidos'),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/pedidos',
                  ModalRoute.withName('/pedidos'),
                );
              },
            ),
            TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.orange,
                ),
                //produtos volta ao menu e pelo botão fechar
                onPressed: () {
                  Navigator.of(context).pushNamed('/produtos');
                },
                child: Text('Produtos')),
            TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.deepPurple,
                  backgroundColor: Colors.black26,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/categorias',
                    ModalRoute.withName('/'),
                  );
                },
                child: Text('Categorias')),
          ],
        ),
      ),
    );
  }
}
