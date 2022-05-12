import 'package:flutter/material.dart';
import 'package:hp_mobile/main.dart';
import 'icons.dart';

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
          IconButton(
            //style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
              Navigator.pushNamed(context, '/notif');
            },
            icon: Icon(MyFlutterApp.notification, color: Color(0xff005595),size: 30,),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: 14.0,
                horizontal: 12.0),
            //height: 30,

            //borderRadius: BorderRadius.circular(7.0),

            child: Material(
                color: Color(0xff005595),
                borderRadius: BorderRadius.circular(7.0),
                child: MaterialButton(
            //height: 30,
            //minWidth: MediaQuery.of(context).size.width,
            //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/auth');
            },
              child: Text("Выйти",
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              textAlign: TextAlign.center,
                          ),
                     )),
              ),

          // TextButton(
          //   style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
          //   onPressed: () {
          //     Navigator.pushReplacementNamed(context, '/auth');
          //   },
          //   child: Text('Выйти',
          //   style: TextStyle(
          //     color: Colors.blue,
          //   ),),
          // ),
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

