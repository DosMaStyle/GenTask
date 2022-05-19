import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    const emailText = SizedBox(
      width: double.infinity,
      child: Text(
        'Электронная почта',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );

    const passwordText = SizedBox(
      width: double.infinity,
      child: Text(
        'Пароль',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );

    final emailField = SizedBox(
        height: 40.0,
        child: TextField(
          obscureText: false,
          //style: style,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(12.0, 10.0, 20.0, 10.0),
              hintText: "Введите электронную почту",
              hintStyle:
                  const TextStyle(fontSize: 18.0, color: Color(0xffc4c4c4)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(7.0))),
        ));

    final passwordField = SizedBox(
        height: 40.0,
        child: TextField(
          obscureText: true,
          //style: style,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(12.0, 10.0, 20.0, 10.0),
              hintText: "Введите пароль",
              hintStyle:
                  const TextStyle(fontSize: 18.0, color: Color(0xffc4c4c4)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(7.0))),
        ));

    final loginButton = Material(
      borderRadius: BorderRadius.circular(7.0),
      color: const Color(0xff005595),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          //
          Navigator.pushNamedAndRemoveUntil(
              context, '/connect', (route) => false);
        },
        child: const Text(
          "Войти",
          style: TextStyle(fontSize: 22.0, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Color(0xffAEC8D6),
              height: 1.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
            ),
            preferredSize: Size.fromHeight(4.0)),
        elevation: 0,
        title: const Text(
          'Sancor',
          style: TextStyle(
            color: Color(0xff005595),
            fontSize: 35,
          ),
        ),
        backgroundColor: Color(0xfffefefe),
        toolbarHeight: 75.0,
      ),
      body: Center(
        child: Container(
          //color: Color(0xfffefefe),
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 45.0,
                ),
                const SizedBox(
                  child: Text(
                    'Авторизация',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 30.0),
                emailText,
                emailField,
                const SizedBox(height: 18.0),
                passwordText,
                //SizedBox(height: 25.0),
                passwordField,
                const SizedBox(height: 45.0),
                loginButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}
