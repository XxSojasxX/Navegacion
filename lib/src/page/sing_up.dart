// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:navegacion1/src/widgets/icon_containers.dart';
import 'package:navegacion1/src/widgets/register.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 19, 216, 216),
                Color.fromRGBO(181, 122, 221, 0.922),
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 200,
            ),
            children: const <Widget>[
              // Aquí va la URL de una imagen
              IconContainers(url: "images/1.jpg"),
              Center(
                child: Text(
                  "Register",
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
                  "Pantalla N°3",
                  style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(
                height: 50.0,
              ),
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}
