import 'package:flutter/material.dart';
import 'package:huawei_health/huawei_health.dart';
import 'package:flutter/services.dart';
import 'authpage.dart';
import 'connectpage.dart';
import 'notificationpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

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

