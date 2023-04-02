import 'package:flutter/material.dart';

class FormFieldPage extends StatefulWidget {
  const FormFieldPage({Key? key, required this.nik, required this.password})
      : super(key: key);
  final String nik;
  final String password;

  static const route = '/form-field-page';

  @override
  State<FormFieldPage> createState() => _FormFieldPageState();
}

class _FormFieldPageState extends State<FormFieldPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Form')),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Nama',
                    label: Text('Nama'),
                    filled: true,
                    fillColor: Colors.yellow,
                  ),
                  validator: (String? value) {
                    if (value?.isEmpty ?? false) {
                      setState(() => _message = 'Belum Tervalidasi');
                      return 'Silahkan isi nama';
                    }
                    if ((value?.length ?? 0) < 6) {
                      return 'Nama tidak boleh kurang dari 6 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Alamat',
                    label: Text('Alamat'),
                    filled: true,
                    fillColor: Colors.yellow,
                  ),
                  validator: (String? value) {
                    if (value?.isEmpty ?? false) {
                      setState(() => _message = 'Belum Tervalidasi');
                      return 'Silahkan isi Alamat';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
/*                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan Umur',
                    label: Text('Umur'),
                    filled: true,
                    fillColor: Colors.yellow,
                  ),
                  keyboardType: TextInputType.number,
                ),*/
                MaterialButton(
                  color: Colors.grey[200],
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      setState(() => _message = 'Berhasil Tervalidasi');
                    }
                  },
                  child: const Text('Ok'),
                ),
                const SizedBox(height: 24),
                Text(_message ?? 'Belum Tervalidasi'),
                SizedBox(height: 16,),
                Text('NIK: ${widget.nik}'),
                Text('Password: ${widget.password}')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
