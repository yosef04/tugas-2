import 'package:belajar_flutter/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Column(children: [
          _inputForm('Nama', _namaController),
          _inputForm('NIM', _nimController),
          _inputForm('Tahun Lahir', _tahunLahirController),
          ElevatedButton(
              onPressed: () {
                String nama = _namaController.text;
                String nim = _nimController.text;
                int usia =
                    DateTime.now().year - int.parse(_tahunLahirController.text);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TampilData(nama: nama, nim: nim, usia: usia)));
              },
              child: const Text('Simpan'))
        ]),
      ),
    );
  }

  _inputForm(String inputName, controller) {
    return TextField(
      decoration: InputDecoration(labelText: inputName),
      controller: controller,
    );
  }
}