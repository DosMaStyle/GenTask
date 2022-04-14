import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          // TextButton(
          //   style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/notif');
          //   },
          //   child: Text('Not',
          //     style: TextStyle(
          //       color: Colors.blue,
          //     ),),
          // ),
          IconButton(
            //style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.west, color: Colors.blue,),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[

      //IconButton(onPressed: () {}, icon: Icon(Icons.west)),

          //listview
          // dismissible

        ],
      ),
    );
  }
}
