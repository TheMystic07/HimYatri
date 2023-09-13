import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController? nameTextEditingController;
  TextEditingController? phoneTextEditingController;
  TextEditingController? emailTextEditingController;
  TextEditingController? passwordTextEditingController;
  // TextEditingController? nameTextEditingController;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Column(
        children: [
          //Dear Future Front end Team , i am working on the core functunality of this is signup page
          //so please add the design juice and sheo your creativity on the project
          //add image for logo , add animations, add anything ,your wish
          //! And Dear Future Backend Team Or Me , I am Sorry bro , in my defence , mai thakka hua hu
          //toh gande code ki maffi dedo , aur mai aalsi toh huu
          SizedBox(
            height: 86,
          ),

          Center(
            child: Text(
              "Register Bus",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      )),
    );
  }
}
