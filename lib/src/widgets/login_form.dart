import 'package:flutter/material.dart';
import 'package:navegacion1/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Center(
      child: Column(
        children: <Widget>[
          InputText(
              hint: "Email Addres",
              label: "Email",
              keyboard: TextInputType.emailAddress,
              icon: const Icon(Icons.verified_user),
              onChanged: (data) {
                _email = data!;
              },
              validator: (data) {
                if (data!.contains("@")) {
                  return 'email invalido';
                }
                return null!;
              })
        ],
      ),
    ));
  }
}