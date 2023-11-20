// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget{
  const MenuLateral({super.key});


  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: Text("CODEA APP"),
              accountEmail: Text("informes@gmail.com"),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://dominio.com/imagen/recurso.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),
          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text("MENU 1", style: TextStyle(color: Colors.white),),
            ),
          ),
          new ListTile(
            title: Text("MENU 2"),
            onTap: (){},
          ),
          new ListTile(
            title: Text("MENU 3"),
          ),
          new ListTile(
            title: Text("MENU 4"),
          )

                 ],
      ) ,
    );
  }
}