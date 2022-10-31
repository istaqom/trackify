import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trackify/tambahperbaikan.dart';
import 'package:trackify/togglebutton.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    GoingScreen(),
    DoneScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perbaikan"),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddPerbaikan(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            color: Theme.of(context).primaryColor,
            child: ToggleButton(
              width: MediaQuery.of(context).size.width / 1.1, 
              height: 32.0, 
              toggleBackgroundColor: Theme.of(context).primaryColor, 
              toggleBorderColor: Colors.white, 
              toggleColor: Colors.white, 
              activeTextColor: Theme.of(context).primaryColor, 
              inactiveTextColor: Colors.white, 
              leftDescription: "going", 
              rightDescription: "done", 
              onLeftToggleActive: () {
                _onItemTapped(0);
              }, 
              onRightToggleActive: () {
                _onItemTapped(1);
              }
            ),
          ),
          _widgetOptions.elementAt(_selectedIndex)
        ],
      ),
    );
  }
}

class GoingScreen extends StatelessWidget {
  const GoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                side: BorderSide(color: Theme.of(context).primaryColor)
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "#14124869",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Putri Qonita Arif",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        "082157516485",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Status :", 
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        "Belum Dikerjakan", 
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                side: BorderSide(color: Theme.of(context).primaryColor)
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "#14124870",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Istaqom Wirawan Adi Pratama",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        "081311905812",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Status :", 
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        "Sedang Dikerjakan", 
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                side: BorderSide(color: Theme.of(context).primaryColor)
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "#14124865",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Muhammad Fathurrohim",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        "082157516776",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Status :", 
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        "Selesai", 
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}