import 'package:flutter/material.dart';
import '../model/model_pegawai.dart'; // Sesuaikan dengan lokasi model pegawai Anda

class PageEditKaryawan extends StatefulWidget {
  final Datum data;

  const PageEditKaryawan({Key? key, required this.data}) : super(key: key);

  @override
  State<PageEditKaryawan> createState() => _PageEditKaryawanState();
}

class _PageEditKaryawanState extends State<PageEditKaryawan> {
  late TextEditingController txtNamaLengkap;
  late TextEditingController txtEmail;
  late TextEditingController txtNoBP;
  late TextEditingController txtNoHP;
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    txtNamaLengkap = TextEditingController(text: widget.data.nama);
    txtEmail = TextEditingController(text: widget.data.email);
    txtNoBP = TextEditingController(text: widget.data.nobp);
    txtNoHP = TextEditingController(text: widget.data.nohp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Edit Data Karyawan'),
        centerTitle: true,
      ),
      body: Form(
        key: keyForm,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                TextFormField(
                  controller: txtNamaLengkap,
                  decoration: InputDecoration(
                    hintText: 'Nama Lengkap',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: txtNoBP,
                  decoration: InputDecoration(
                    hintText: 'No BP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: txtNoHP,
                  decoration: InputDecoration(
                    hintText: 'No HP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (keyForm.currentState?.validate() == true) {
                      // Simpan perubahan dan kirim kembali ke halaman sebelumnya
                      Datum updatedData = Datum(
                        id: widget.data.id,
                        nama: txtNamaLengkap.text,
                        nobp: txtNoBP.text,
                        email: txtEmail.text,
                        nohp: txtNoHP.text,
                        tanggalInput: widget.data.tanggalInput,
                      );
                      Navigator.pop(context, updatedData);
                    }
                  },
                  child: const Text("SIMPAN"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Pastikan untuk membersihkan controller
    txtNamaLengkap.dispose();
    txtEmail.dispose();
    txtNoBP.dispose();
    txtNoHP.dispose();
    super.dispose();
  }
}