import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama; //contoh data yang di-passing
  final String nim;
  final int usia;

  const TampilData(
      {Key? key,
      required this.nama,
      required this.nim,
      required this.usia})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(9),
        child: Text('Nama saya $nama, NIM $nim, dan umur saya adalah $usia tahun.'),
      ),
    );
  }
}