import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
        title: const Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          ToggleButton(
            width: double.infinity, 
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
    return Container();
  }
}

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}