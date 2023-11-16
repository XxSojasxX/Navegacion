import 'package:flutter/material.dart';
import 'package:navegacion1/src/widgets/icon_containers.dart';


class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
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
            children: const <Widget>[
              // Aquí va la URL de una imagen
              IconContainers(url: "images/logo.jpg"),
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Pantalla N°2",
                  style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(
                height: 50.0,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}