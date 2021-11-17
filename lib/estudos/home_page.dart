import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Isto é um alarme')));
              },
              icon: const Icon(Icons.add_alert),
              tooltip: 'Mostrar Lembrete',
            )
          ],
          title: Text(
            'Amortex Amortecedores',
            style: TextStyle(
              color: Colors.yellow[700]),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Acesso Amortex ⚙ '.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Column(
              //Coluna do Drawer
              children: [
                ListTile(
                  leading: Icon(Icons.date_range_rounded),
                  title: Text('Agendamentos'),
                ),
                ListTile(
                  leading: Icon(Icons.message_rounded),
                  title: Text('Mensagens'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Dados Cliente'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Configurações'),
                )
              ],
            ),
          ]),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            (Text('Teste1',
            style: TextStyle(
            fontSize: 45,
            color: Colors.indigo, 
            ))
          ),
            Text('Teste2',
            style: TextStyle(
            fontSize: 45,
            color: Colors.indigo, 
            ),
          ),
            Text('Teste3',
            style: TextStyle(
            fontSize: 45,
            color: Colors.indigo, 
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            TextButton(
              child: Text('Teste4'),
              onPressed: (){},),
            Text ('Text5'),
          ],)
          ],
        ),
      );

  }
}
