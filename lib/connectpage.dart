import 'package:flutter/material.dart';

class ConnectPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Color(0xffAEC8D6),
              height: 1.0,
              margin: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
            ),
            preferredSize: Size.fromHeight(4.0)),
        elevation: 0,
        title: Text('Sancor',
          style: TextStyle(
            color: Color(0xff005595),
            fontSize: 35,
          ),
        ),
        backgroundColor: Color(0xfffefefe),
        toolbarHeight: 75.0,
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
              Navigator.pushNamed(context, '/notif');
            },
            child: Text('Not',
            style: TextStyle(
              color: Colors.blue,
            ),),
          ),
          TextButton(
            style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/auth');
            },
            child: Text('Выйти',
            style: TextStyle(
              color: Colors.blue,
            ),),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 60),

            child: Material(
              borderRadius: BorderRadius.circular(7.0),
              color: Color(0xff005595),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              height: 60.0,

              //margin: EdgeInsets.symmetric(),
                onPressed: () {

            },
                child: Text('Сопрячь',
                style: TextStyle(
                  color: Color(0xfff8f8f8),
                  fontSize: 22.0,
                ),),
            ),
        ),
          ),
        ],
      ),
    );
  }
}

