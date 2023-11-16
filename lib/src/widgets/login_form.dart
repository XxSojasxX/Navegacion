import 'package:flutter/material.dart';
import 'package:navegacion1/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _email = "";
  String _password="";

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: const <Widget>[
          InputText(
            hint: "Email Address",
            label: "Email Address",
            keyboard: TextInputType.emailAddress,
          )
        ],
      ),
    );
  }
}
