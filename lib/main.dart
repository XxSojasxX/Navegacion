// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navegacion1/src/page/home_page.dart';
import 'package:navegacion1/src/page/sing_in.dart';
import 'package:navegacion1/src/page/sing_up.dart';
import 'package:navegacion1/src/widgets/menulateral.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //Crear rutas de navegacion
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("MENU LATERAL"),),
        drawer: MenuLateral(),
      ),
      initialRoute: "Home",
      routes: <String, WidgetBuilder>{
        "Home": (BuildContext context) => const HomePage(),
        "Sing_In": (BuildContext context) => const SignIn(),
        "Sing_up": (BuildContext context) => const SignUp(),
      },
    );
  }
}
