import 'package:flutter/material.dart';
import 'authpage.dart';
import 'connectpage.dart';
import 'notificationpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sancor',
      theme: ThemeData(brightness: Brightness.light,
      ),
      initialRoute: '/auth',
      routes: { //Навигация
        '/auth': (context) => AuthPage(),
        '/connect': (context) => ConnectPage(),
        '/notif' : (context) => NotificationPage(), 
      },
    );
  }
}

