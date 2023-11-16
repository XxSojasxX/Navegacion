import 'package:flutter/material.dart';

import '../widgets/icon_containers.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 90, 97, 97),
                Color.fromARGB(238, 25, 26, 25),
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 200,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              // Aquí va la URL de una imagen
              const IconContainers(url: "images/logo.jpg"),
              const Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              const Center(
                child: Text(
                  "Pantalla N°3",
                  style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
              const Divider(
                height: 50.0,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}