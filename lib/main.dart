import 'package:flutter/material.dart';
import 'home.dart';
import 'settings.dart';
import 'graph.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      HomePage.routeName: (BuildContext context) => const HomePage(),
      GraphsRoute.routeName: (BuildContext context) => const GraphsRoute(),
      SettingsRoute.routeName: (BuildContext context) => const SettingsRoute(),
    };


    return MaterialApp(
      title: 'Music Data',
      routes: routes,
      theme: ThemeData(
        //backgroundColor: const Color(0xfff2ede9),
        scaffoldBackgroundColor: HomePageState.lightColor,
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff1c286c),
            foregroundColor: Colors.white,
        ),
      ),
      home: const HomePage()
    );
  }
}










