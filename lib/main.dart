import 'package:flutter/material.dart';
import 'package:primeiroappflutter/paginas/home_botoes.dart';
import 'package:primeiroappflutter/paginas/categorias_page.dart';
import 'package:primeiroappflutter/paginas/clientes_page.dart';
import 'package:primeiroappflutter/paginas/pedidos_page.dart';
import 'package:primeiroappflutter/paginas/produtos_page.dart';


void main() {
  runApp(
    MaterialApp( //defino a Rota para o meu app 
      home: HomeBotoes(),
      initialRoute:'/',
      routes: {
        '/clientes':(_) => ClientePage(),
        '/pedidos': (_) =>PedidosPage(),
        '/produtos': (_) => ProdutosPage(),
        '/categorias': (context) => CategoriasPage(),
      },
    ),
  );
}
