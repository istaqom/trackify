import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddPerbaikan extends StatefulWidget {
  const AddPerbaikan({super.key});

  @override
  State<AddPerbaikan> createState() => _AddPerbaikanState();
}

class _AddPerbaikanState extends State<AddPerbaikan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Perbaikan"),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Nama Pelanggan",
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Joko Widodo",
                      hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
                  style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "No. Telepon",
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "08xx78xx56xx",
                      hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
                  style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Deskripsi",
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Mesinnya tiba-tiba mati",
                      hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
                  minLines: 4,
                  maxLines: null,
                  style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {

                }, 
                child: const Text("Konfirmasi"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
