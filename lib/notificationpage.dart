import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List notifCnt = [];

  @override
  void initState() {
    super.initState();
    notifCnt
        .addAll(['12.05.2022 14:27', '12.05.2022 13:15', '12.05.2022 12:45']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            child: Container(
              color: Color(0xffAEC8D6),
              height: 1.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
            ),
            preferredSize: const Size.fromHeight(4.0)),
        elevation: 0,
        title: const Text(
          'Sancor',
          style: TextStyle(
            color: Color(0xff005595),
            fontSize: 35,
          ),
        ),
        backgroundColor: const Color(0xfffefefe),
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
            //height: 30,

            //borderRadius: BorderRadius.circular(7.0),

            child: Material(
                color: const Color(0xff005595),
                borderRadius: BorderRadius.circular(7.0),
                child: MaterialButton(
                  //height: 30,
                  //minWidth: MediaQuery.of(context).size.width,
                  //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Назад",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            Divider(height: 10, color: Colors.transparent),
        itemCount: notifCnt.length,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(notifCnt[index]),
            child: Material(
              color: Colors.white,
              elevation: 5,
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                height: 90.0,
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: ListTile(
                    title: Text(notifCnt[index]),
                    subtitle: const Text(
                      "\nУ вас высокая чсс (>130). Возможно, вам следует отдохнуть.",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                notifCnt.removeAt(index);
              });
            },
          );
        },

        //IconButton(onPressed: () {}, icon: Icon(Icons.west)),
      ),
    );
  }
}
