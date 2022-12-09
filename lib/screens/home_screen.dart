// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:app_def/screens/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Déconnexion"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignInScreen()));
          },
        ),
      )
    );
  }
}