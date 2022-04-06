import 'package:flutter/material.dart';

class ConnectPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sancor',
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        backgroundColor: Color(0xff606060),
        toolbarHeight: 75.0,
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
              Navigator.pushNamed(context, '/notif');
            },
            child: Text('Not'),
          ),
          TextButton(
            style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/auth');
            },
            child: Text('Выйти'),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            alignment: Alignment.bottomCenter,
          child: ElevatedButton(
              onPressed: () {

          },
              child: Text('Сопрячь'),
            style: ButtonStyle(
              
            ),
          ),
        ),
        ],
      ),
    );
  }
}

