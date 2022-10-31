import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Trackify"),
          TextFormField(),
          TextFormField(),
          TextButton(onPressed: () {
            
          }, child: Text("Forgot Password?") ),
          ElevatedButton(onPressed: () {}, child: Text("Sign In"))
        ],
      ),
    );
  }
}