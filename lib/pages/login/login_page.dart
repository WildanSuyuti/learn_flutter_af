import 'package:flutter/material.dart';

import 'login_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _nik = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _nik.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 80,
                    bottom: 8,
                  ),
                  child: Text(
                    'Masuk-PSB',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.1),
                  child: const Text(
                    'Ma’had Al-Furqon Al-Islami Gresik',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
                LoginField(
                  controller: _nik,
                  label: 'NIK (Nomor Induk Kependudukan)',
                  hintText: '1234567890',
                  keyboardType: TextInputType.number,
                  validator: (String? value) {
                    if (value?.isEmpty ?? false) {
                      return 'Silahkan isi NIK';
                    }
                    if ((value?.length ?? 0) < 12) {
                      return 'NIK tidak boleh kurang dari 12 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                LoginField(
                  controller: _password,
                  label: 'Sandi / Password',
                  hintText: 'Masukkan Sandi/Password',
                  obscureText: true,
                  validator: (String? value) {
                    if (value?.isEmpty ?? false) {
                      return 'Silahkan isi Password';
                    }
                    if ((value?.length ?? 0) < 6) {
                      return 'Password tidak boleh kurang dari 6 karakter';
                    }
                    return null;
                  },
                ),
                MaterialButton(
                  color: Colors.blue,
                  child: const Text('Submit'),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      debugPrint('tervalidasi');
                      debugPrint('NIK: ${_nik.text}');
                      debugPrint('Password: ${_password.text}');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
