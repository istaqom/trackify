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
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              "#14124870", 
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24.0),
            padding: const EdgeInsets.all(16.0),
            color: Theme.of(context).primaryColor,
            height: 320.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        width: 16.0,
                        height: 16.0,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Text(
                            "06/09/2022 10:05 AM",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Text(
                            "Barang Sedang Dikerjakan",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        width: 16.0,
                        height: 16.0,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Text(
                            "05/09/2022 14:12 PM",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Text(
                            "Barang Masuk",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}