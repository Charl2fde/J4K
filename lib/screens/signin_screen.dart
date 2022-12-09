// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, prefer_final_fields

import 'package:app_def/screens/home_screen.dart';
import 'package:app_def/screens/signup_screen.dart';
import 'package:app_def/reusable_widgets/reusable_widget.dart';
import 'package:app_def/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //test

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
         decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
              colors: [Colors.pink, Colors.blue],
          ),
        ),
        child: SingleChildScrollView(child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children:<Widget>[
                logoWidget("assets/images/j4k.png"),
                SizedBox(
                  height: 30,
                ),
                reusableTextField(
                  "Pseudo", Icons.person_outline, false,
                  _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField(
                  "Mot de passe", Icons.lock_outline, true,
                   _passwordTextController), 
                SizedBox(
                  height: 20,
                ),
                SignInSignUpButton(context, true, () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>HomeScreen()));
              }),
                signUpOption()                
              ],
            ),
          ),
        ),
      )
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("vous n\'avez pas de compte ?",
          style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap:() {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "S'inscrire",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        )
      ],
    );
  }
}