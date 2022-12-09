// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, prefer_final_fields

import 'package:app_def/screens/home_screen.dart';
import 'package:app_def/reusable_widgets/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key : key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

TextEditingController _passwordTextController = TextEditingController();
TextEditingController _emailTextController = TextEditingController();
TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "S'inscrire",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [Colors.pink, Colors.blue],        
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          )),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Pseudo", Icons.person_outline, false,
                  _userNameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Email", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Mot de Passe", Icons.lock_outline, true,
                  _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              SignInSignUpButton(context, false, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>HomeScreen()));
              })
            ],
          ),
        ))),
      );
    }
}

