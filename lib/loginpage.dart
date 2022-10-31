import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trackify/adminhomepage.dart';

class Login extends StatefulWidget {
  const Login({super.key, this.suffixIcon});
  final List<Widget>? suffixIcon;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: const EdgeInsets.all(40.0),
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        height: 320.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Trackify",
                style: TextStyle(
                    fontSize: 32,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "example@gmail.com",
                    hintStyle:
                        TextStyle(color: Theme.of(context).primaryColor)),
                style: TextStyle(color: Theme.of(context).primaryColor)),
            TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          icon: Builder(builder: (context) {
                            if (showPassword) {
                              return const Icon(Icons.visibility_off);
                            } else {
                              return const Icon(Icons.visibility);
                            }
                          }),
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                        ),
                        ...widget.suffixIcon ?? [],
                      ],
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    labelText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle:
                        TextStyle(color: Theme.of(context).primaryColor)),
                obscureText: !showPassword,
                style: TextStyle(color: Theme.of(context).primaryColor)),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
              child:
                  TextButton(onPressed: () {}, child: Text("Forgot Password?")),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminHome(),
                    ),
                  );
                },
                child: Text("Sign In"))
          ],
        ),
      ),
    );
  }
}
