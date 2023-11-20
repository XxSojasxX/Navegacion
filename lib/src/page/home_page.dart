// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:navegacion1/src/page/sing_in.dart';
import 'package:navegacion1/src/page/sing_up.dart';
import 'package:navegacion1/src/widgets/icon_containers.dart';

import '../widgets/menulateral.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers

     return Scaffold(
      appBar: AppBar(title: Text("MENU LATERAL")),
      drawer: MenuLateral(),
      body: Container(
        width: double.infinity, //Se ajusta al tamaño
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(120, 255, 0, 0),
            Color.fromARGB(0, 194, 23, 228),
          ], begin: Alignment.topCenter),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
          children: <Widget>[
            //!Aqui se ubica el URL de una imagen
            const IconContainers(url: "images/lobo1.jpg"),
            Text(
              "Bienvenidos a mi curso",
              style: TextStyle(
                fontFamily: "PermamentMarker",
                fontSize: 30.0,
              ),
            ),
            Divider(
              height: 20.0,
            ),
            Text(
              "Ejercicio N.-003",
              style: TextStyle(
                fontFamily: "PermamentMarker",
                fontSize: 30.0,
              ),
            ),
            Divider(
              height: 20.0,
            ),
            SizedBox(
              width: 300.0,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => SignUp());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Sing Up",
                  style: TextStyle(
                    color: Colors.black26,
                    fontFamily: "FreedokaOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Divider(
              height: 20.0,
            ),
            SizedBox(
              width: 300.0,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => SignIn());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Sing in",
                  style: TextStyle(
                    color: Colors.black26,
                    fontFamily: "FreedokaOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );


    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 0, 149, 175),
            Color.fromARGB(255, 9, 128, 240),
            Color.fromARGB(255, 164, 10, 236)
          ], begin: Alignment.topCenter)),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 200.0),
            children: <Widget>[
              //aqui ubicaremos el url de una imagen
              const IconContainers(url: "images/1.jpg"),
              const Text(
                "Bienvenidos a mi curso",
                style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                    color: Colors.white),
              ),
              const Divider(
                height: 20.0,
              ),
              const Text(
                "Ejercicio N°3",
                style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                    color: Colors.white),
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => const SignUp());
                    Navigator.push(context, route);
                  },
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "FredokaOne",
                        fontSize: 30.0),
                  ),
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    // ignore: unused_local_variable
                    final route = MaterialPageRoute(
                        builder: ((context) => const SignIn()));
                    Navigator.push(context, route);
                  },
                  child: const Text(
                    "Sing In",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "FredokaOne",
                        fontSize: 30.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
