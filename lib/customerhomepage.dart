import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tracking"),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(40.0),
        padding: const EdgeInsets.all(16.0),
        color: Theme.of(context).primaryColor,
        height: 240.0,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Enter Your Code",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            TextFormField(
                decoration: InputDecoration(
                    labelText: "Code",
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "#14124869",
                    hintStyle:
                        TextStyle(color: Theme.of(context).primaryColor)),
                style: TextStyle(color: Theme.of(context).primaryColor)),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white
                ),
                onPressed: () {}, 
                child: Text("Track", style: TextStyle(color: Theme.of(context).primaryColor),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
