import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tracking"),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Text("#14124870", style: TextStyle(color: Theme.of(context).primaryColor),),
          Container(
            margin: const EdgeInsets.all(40.0),
            padding: const EdgeInsets.all(16.0),
            color: Theme.of(context).primaryColor,
            height: 320.0
          )
        ],
      ),
    );
  }
}