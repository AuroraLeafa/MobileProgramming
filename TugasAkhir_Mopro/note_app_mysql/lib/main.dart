// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:note_app_mysql/splash.dart';
import 'package:note_app_mysql/about.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // themeMode: ThemeMode.dark,
          theme: ThemeData(
              primaryColor: Colors.black,
              scaffoldBackgroundColor: Colors.blueGrey.shade900,
              appBarTheme: AppBarTheme(
                  backgroundColor: Colors.transparent, elevation: 0)),
          title: 'Sticky Notes App',
          initialRoute: '/',
          routes: {
            '/': (context) {
              var body = splashScreen();
              //var body = aboutapp();
              return body;
            },
          },
        )
        );
  }
}
