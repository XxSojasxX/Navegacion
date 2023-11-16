import 'package:flutter/material.dart';
import 'package:navegacion1/src/widgets/icon_containers.dart';
import 'package:navegacion1/src/widgets/login_form.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                Color.fromARGB(255, 0, 255, 255),
                Color.fromARGB(236, 31, 31, 204),
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
              IconContainers(url: "images/1.jpg"),
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
              // aqui llamamos a la pantalla del formulario
              LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
